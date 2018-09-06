#include <Arduino.h>
#include <ssd1351.h>
#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>
#include <si5351.h>
#include <Bounce.h>
#include "AM_demod.h"

#define ENCODER_OPTIMIZE_INTERRUPTS
#include <Encoder.h>

#define LCD_DC  9
#define LCD_RST 8
#define ENC_A   7
#define ENC_B   6
#define ENC_BTN 5

#define MAX_GAIN 3
#define MAX_VOL  10

unsigned long loop1 = 0;
unsigned long loop2 = 0;

Si5351 si5351;

typedef ssd1351::HighColor Color;

auto display = ssd1351::SSD1351<Color, ssd1351::SingleBuffer, 128, 128> (10, LCD_DC, LCD_RST, 11, 13);

AudioInputAnalog    adc1(A2);
AudioAmplifier      amp1;
AudioFilterBiquad   biquad1;
AudioFilterBiquad   biquad2;
AudioOutputAnalog   dac1;
AudioAnalyzeFFT256  fft;
AudioMixer4         mixer;
AMDemod             demod;

AudioConnection     patchCord1(adc1, 0, mixer, 0);
AudioConnection     patchCord2(mixer, fft);
AudioConnection     patchCord3(mixer, biquad1);
AudioConnection     patchCord5(biquad1, demod);
AudioConnection     patchCord6(demod, biquad2);
AudioConnection     patchCord7(biquad2, amp1);
AudioConnection     patchCord8(amp1, dac1);

Encoder knob(ENC_A, ENC_B);
Bounce button1 = Bounce(ENC_BTN, 10);

unsigned long tuneStep = 10;
unsigned long freq = 94140000;
unsigned long pos = 0;

bool vfo_found = false;

unsigned int selection = 0;
float inputGain = 1.0;
float outputVolume = 3.0;

void printSegment(unsigned int segment, unsigned long freq) {
  char nbuf[4];
  if (selection == segment) {
      display.setTextColor(ssd1351::RGB(0, 0, 255));
  } else {
      display.setTextColor(ssd1351::RGB(0, 255, 255));
  }
  sprintf(nbuf, "%03d", freq);
  display.print(nbuf);
}

void printFrequency(unsigned long freq) {
  
  if (freq >= 1000000) {
    printSegment(2, freq / 1000000);
    display.print(",");
    printSegment(1, (freq / 1000) % 1000);
    display.print(",");
    printSegment(0, freq % 1000);
  } 
  else if (freq >= 1000) {
    printSegment(1, (freq /1000) % 1000);
    display.print(",");
    printSegment(0, freq % 1000);
  }
  else {
    printSegment(0, freq);
  }
  display.setTextColor(ssd1351::RGB(0, 255, 255));
  display.print(" Hz");
}

void drawChart(void)
{
  display.fillScreen(ssd1351::RGB());
  
  display.setFont(TomThumb);
  display.setTextSize(2);
  display.setTextColor(ssd1351::RGB(0, 255, 255));

  Color chartColor = ssd1351::RGB(0, 128, 255);

  display.drawRect(3, 16, 124, 60, chartColor);

  for(int i=2; i < 60; i += 5) {
    display.drawLine(0, i + 18, 2, i + 18, chartColor);
  }

  for(int i=0; i < 125; i += 5) {
    display.drawLine(i + 3, 76, i + 3, 78, chartColor);
  }

  display.setCursor(0, 12);
  printFrequency(freq);

  if (!vfo_found) {
    display.setCursor(10, 40);
    display.print("No VFO");
  } else {
    float db = 0;
  
    for (int i=0; i <= 127; i++) {
      db = fft.read(i) * 1000;
      if (db > 65) {
        db = 65;
      }
      display.drawLine(i + 4, 75, i + 4, 75 - db, ssd1351::RGB(0, 255, 0));
    }
  }

  // Volume bar
  display.setTextSize(1);
  display.setCursor(0, 90);
  if (selection == 3) {
      display.setTextColor(ssd1351::RGB(0, 0, 255));
  } else {
      display.setTextColor(ssd1351::RGB(0, 255, 255));
  }
  display.print("Volume");
  display.setTextColor(ssd1351::RGB(0, 255, 255));
  display.drawRect(30, 82, 50, 9, chartColor);
  display.fillRect(32, 84, 46 * outputVolume/MAX_VOL, 5, chartColor);

  // Gain bar
  display.setCursor(0, 100);
  if (selection == 4) {
      display.setTextColor(ssd1351::RGB(0, 0, 255));
  } else {
      display.setTextColor(ssd1351::RGB(0, 255, 255));
  }
  display.print("Gain");
  display.setTextColor(ssd1351::RGB(0, 255, 255));
  display.drawRect(30, 92, 50, 9, chartColor);
  display.fillRect(32, 94, 46 * inputGain/MAX_GAIN, 5, chartColor);

  display.updateScreen();
}


void setup(void) {
  AudioMemory(20);
  display.begin();
  display.fillScreen(ssd1351::RGB());
  display.setTextColor(ssd1351::RGB(0, 255, 0));
  display.setCursor(20, 20);
  display.print("Starting...");
  display.updateScreen();

  pinMode(ENC_BTN, INPUT_PULLUP);
  
  AudioNoInterrupts();

  biquad1.setHighpass(0, 15000, 0.7);
  biquad2.setLowpass(0, 6000, 0.7);
  biquad2.setHighpass(1, 400, 0.7);
  
  mixer.gain(0, inputGain);
  amp1.gain(outputVolume);
  
  AudioInterrupts();

  vfo_found = si5351.init(SI5351_CRYSTAL_LOAD_8PF, 0, 0);

  if (vfo_found){
    si5351.set_freq((freq-10000) * 100ULL, SI5351_CLK1);
    si5351.drive_strength(SI5351_CLK1, SI5351_DRIVE_6MA);
  }
}


void loop(void) {
  unsigned long currentMillis = millis();
 
  if (currentMillis - loop1 > 50) { 
    loop1 = currentMillis; 

    if (fft.available()) {
      drawChart();
    }
  }

  if (currentMillis - loop2 > 1000) {
    loop2 = currentMillis;
    if (!vfo_found) {
      vfo_found = si5351.init(SI5351_CRYSTAL_LOAD_8PF, 0, 0);
      if (vfo_found) {
        si5351.set_freq((freq - 10000) * 100ULL, SI5351_CLK1);
        si5351.drive_strength(SI5351_CLK1, SI5351_DRIVE_6MA);
      }
    }
    drawChart();
  }

  if (button1.update()) {
    if (button1.fallingEdge()) {
      selection += 1;
      if (selection > 4) {
        selection = 0;
      }

      switch (selection) {
        case 0:
          tuneStep = 100;
          break;
        case 1:
          tuneStep = 10000;
          break;
        case 2:
          tuneStep = 1000000;
          break;
      }
      drawChart();
    }
  }  
  unsigned long newPos = knob.read();
  if (newPos != pos) {
      if (newPos > pos) {
        if (selection <= 2) {
          freq += tuneStep;
          if (freq > 200000000) freq = 200000000;
        }
        if (selection == 3){
          outputVolume += 1;
          if (outputVolume > MAX_VOL) outputVolume = MAX_VOL;
        }
        if (selection == 4) {
          inputGain += 0.1;
          if (inputGain > MAX_GAIN) inputGain = MAX_GAIN;
        }
      }
      else if (newPos < pos) {
        if (selection <= 2) {
          if (tuneStep < freq) {
            freq -= tuneStep;
          }
          if (freq < 1000) freq=1000;
        }
        if (selection == 3) {
          outputVolume -= 1;
          if (outputVolume < 1) outputVolume = 1;
        }
        if (selection == 4) {
          inputGain -= 0.1;
          if (inputGain < 0.1) inputGain = 0.1;
        }
      }
      if (vfo_found) {
        si5351.set_freq((freq - 10000) * 100ULL, SI5351_CLK1);
        si5351.drive_strength(SI5351_CLK1, SI5351_DRIVE_6MA);
      }
      mixer.gain(0, inputGain);
      amp1.gain(outputVolume);
    pos = newPos;
    drawChart();
  }
}
