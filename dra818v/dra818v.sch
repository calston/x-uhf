EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L x-uhf:DRA818V U2
U 1 1 5B6F5E8E
P 3650 2250
F 0 "U2" H 3650 3078 50  0000 C CNN
F 1 "DRA818V" H 3650 2987 50  0000 C CNN
F 2 "x-uhf:DRA818" H 3600 2200 50  0001 C CNN
F 3 "" H 3600 2200 50  0001 C CNN
	1    3650 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5B6F5FC1
P 3850 800
F 0 "J3" V 3816 612 50  0000 R CNN
F 1 "RF" V 3725 612 50  0000 R CNN
F 2 "x-uhf:X-UHF_Interconnect" H 3850 800 50  0001 C CNN
F 3 "~" H 3850 800 50  0001 C CNN
	1    3850 800 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5B6F604C
P 2100 2050
F 0 "J1" H 2020 1725 50  0000 C CNN
F 1 "AF_OUT" H 2020 1816 50  0000 C CNN
F 2 "x-uhf:X-UHF_Interconnect" H 2100 2050 50  0001 C CNN
F 3 "~" H 2100 2050 50  0001 C CNN
	1    2100 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5B6F60A2
P 2100 2450
F 0 "J2" H 2020 2125 50  0000 C CNN
F 1 "AF_IN" H 2020 2216 50  0000 C CNN
F 2 "x-uhf:X-UHF_Interconnect" H 2100 2450 50  0001 C CNN
F 3 "~" H 2100 2450 50  0001 C CNN
	1    2100 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 2350 2550 2350
Wire Wire Line
	2550 2350 2550 2450
Wire Wire Line
	2550 2450 2300 2450
Wire Wire Line
	3100 2150 2550 2150
Wire Wire Line
	2550 2150 2550 2050
Wire Wire Line
	2550 2050 2300 2050
Wire Wire Line
	2300 1950 2400 1950
Wire Wire Line
	2400 1950 2400 2150
Wire Wire Line
	2400 2150 2300 2150
Wire Wire Line
	2300 2350 2400 2350
Wire Wire Line
	2400 2350 2400 2550
Wire Wire Line
	2400 2550 2300 2550
Wire Wire Line
	2400 2150 2400 2350
Connection ~ 2400 2150
Connection ~ 2400 2350
Wire Wire Line
	2400 2550 2400 2950
Wire Wire Line
	2400 2950 3500 2950
Wire Wire Line
	3500 2950 3500 2850
Connection ~ 2400 2550
Wire Wire Line
	3600 2850 3600 2950
Wire Wire Line
	3600 2950 3500 2950
Connection ~ 3500 2950
Wire Wire Line
	3850 1600 3850 1000
Wire Wire Line
	3750 1000 3750 1100
Wire Wire Line
	3750 1100 3950 1100
Wire Wire Line
	3950 1100 3950 1000
$Comp
L power:Earth #PWR02
U 1 1 5B6F68FA
P 3950 1200
F 0 "#PWR02" H 3950 950 50  0001 C CNN
F 1 "Earth" H 3950 1050 50  0001 C CNN
F 2 "" H 3950 1200 50  0001 C CNN
F 3 "~" H 3950 1200 50  0001 C CNN
	1    3950 1200
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR01
U 1 1 5B6F6930
P 3600 3100
F 0 "#PWR01" H 3600 2850 50  0001 C CNN
F 1 "Earth" H 3600 2950 50  0001 C CNN
F 2 "" H 3600 3100 50  0001 C CNN
F 3 "~" H 3600 3100 50  0001 C CNN
	1    3600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2950 3600 3100
Connection ~ 3600 2950
Wire Wire Line
	3950 1100 3950 1200
Connection ~ 3950 1100
$Comp
L Regulator_Linear:LD1117S50TR_SOT223 U1
U 1 1 5B6F6D92
P 2400 950
F 0 "U1" H 2400 1192 50  0000 C CNN
F 1 "LD1117S50TR_SOT223" H 2400 1101 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 2400 1150 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 2500 700 50  0001 C CNN
	1    2400 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5B6F6E0B
P 3050 1350
F 0 "C2" V 2798 1350 50  0000 C CNN
F 1 "1uF" V 2889 1350 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 3088 1200 50  0001 C CNN
F 3 "~" H 3050 1350 50  0001 C CNN
	1    3050 1350
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5B6F6E63
P 1900 1150
F 0 "C1" H 2015 1196 50  0000 L CNN
F 1 "10uF" H 2015 1105 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1938 1000 50  0001 C CNN
F 3 "~" H 1900 1150 50  0001 C CNN
	1    1900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 950  3450 1350
Wire Wire Line
	2900 1350 2400 1350
Wire Wire Line
	2400 1350 2400 1250
Wire Wire Line
	2400 1350 1900 1350
Wire Wire Line
	1900 1350 1900 1300
Connection ~ 2400 1350
Wire Wire Line
	1900 1000 1900 950 
Wire Wire Line
	1900 950  2100 950 
Connection ~ 2400 1950
$Comp
L Device:D D1
U 1 1 5B6F92CC
P 3050 950
F 0 "D1" H 3050 734 50  0000 C CNN
F 1 "1N4001" H 3050 825 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 3050 950 50  0001 C CNN
F 3 "~" H 3050 950 50  0001 C CNN
	1    3050 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 950  3200 950 
Wire Wire Line
	2900 950  2800 950 
Wire Wire Line
	3200 1350 3450 1350
Connection ~ 3450 1350
Wire Wire Line
	3450 1350 3450 1600
Wire Wire Line
	2400 1350 2400 1950
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U3
U 1 1 5B70079C
P 5950 3050
F 0 "U3" H 5950 1372 50  0000 C CNN
F 1 "ATmega328P-AU" H 5950 1463 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 5950 3050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5950 3050 50  0001 C CNN
	1    5950 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5B700983
P 4950 3600
F 0 "Y1" V 4996 3469 50  0000 R CNN
F 1 "16M" V 4905 3469 50  0000 R CNN
F 2 "Crystals:Crystal_SMD_HC49-SD" H 4950 3600 50  0001 C CNN
F 3 "~" H 4950 3600 50  0001 C CNN
	1    4950 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 3550 5150 3550
Wire Wire Line
	5150 3750 5150 3650
Wire Wire Line
	5150 3650 5350 3650
Wire Wire Line
	4950 3750 5150 3750
Wire Wire Line
	5150 3550 5150 3450
Wire Wire Line
	5150 3450 4950 3450
Wire Wire Line
	5350 2350 4600 2350
Wire Wire Line
	4600 2350 4600 2250
Wire Wire Line
	4600 2250 4200 2250
Wire Wire Line
	5350 2250 4700 2250
Wire Wire Line
	4700 2250 4700 2150
Wire Wire Line
	4700 2150 4200 2150
Wire Wire Line
	5350 2150 4800 2150
Wire Wire Line
	4800 2150 4800 2050
Wire Wire Line
	4800 2050 4200 2050
Wire Wire Line
	5950 1550 5950 1100
Wire Wire Line
	4200 2550 5350 2550
Wire Wire Line
	4200 2450 5350 2450
Wire Wire Line
	3950 1100 5950 1100
Wire Wire Line
	2800 950  2800 650 
Wire Wire Line
	2800 650  7050 650 
Wire Wire Line
	7050 650  7050 4750
Wire Wire Line
	7050 4750 5950 4750
Wire Wire Line
	5950 4750 5950 4550
Connection ~ 2800 950 
Wire Wire Line
	2800 950  2700 950 
Wire Wire Line
	5850 4550 5850 4750
Wire Wire Line
	5850 4750 5950 4750
Connection ~ 5950 4750
$Comp
L power:Earth #PWR03
U 1 1 5B713CD0
P 5950 5150
F 0 "#PWR03" H 5950 4900 50  0001 C CNN
F 1 "Earth" H 5950 5000 50  0001 C CNN
F 2 "" H 5950 5150 50  0001 C CNN
F 3 "~" H 5950 5150 50  0001 C CNN
	1    5950 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5B713D0D
P 5950 4950
F 0 "C3" H 6065 4996 50  0000 L CNN
F 1 "1uF" H 6065 4905 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5988 4800 50  0001 C CNN
F 3 "~" H 5950 4950 50  0001 C CNN
	1    5950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4800 5950 4750
Wire Wire Line
	5950 5100 5950 5150
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5B71BF0C
P 4050 3650
F 0 "J4" V 3923 3830 50  0000 L CNN
F 1 "Conn_01x04" V 4014 3830 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm_SMD_Pin1Left" H 4050 3650 50  0001 C CNN
F 3 "~" H 4050 3650 50  0001 C CNN
	1    4050 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2950 4150 2950
Wire Wire Line
	4150 2950 4150 3450
Wire Wire Line
	5350 2850 4050 2850
Wire Wire Line
	4050 2850 4050 3450
Wire Wire Line
	3950 3450 3950 2950
Wire Wire Line
	3950 2950 3600 2950
Wire Wire Line
	3850 3450 3850 3350
Wire Wire Line
	3850 3350 1650 3350
Wire Wire Line
	1650 3350 1650 950 
Wire Wire Line
	1650 950  1900 950 
Connection ~ 1900 950 
$EndSCHEMATC
