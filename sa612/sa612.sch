EESchema Schematic File Version 4
LIBS:sa612-cache
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
L x-uhf:SA612 U1
U 1 1 5B6B886F
P 2500 2250
F 0 "U1" H 2500 2978 50  0000 C CNN
F 1 "SA612" H 2500 2887 50  0000 C CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 2350 2350 50  0001 C CNN
F 3 "" H 2350 2350 50  0001 C CNN
	1    2500 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5B6B8961
P 1900 1400
F 0 "C3" V 1645 1400 50  0000 C CNN
F 1 "1uF" V 1736 1400 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1938 1250 50  0001 C CNN
F 3 "~" H 1900 1400 50  0001 C CNN
	1    1900 1400
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR01
U 1 1 5B6B8B39
P 1550 1550
F 0 "#PWR01" H 1550 1300 50  0001 C CNN
F 1 "Earth" H 1550 1400 50  0001 C CNN
F 2 "" H 1550 1550 50  0001 C CNN
F 3 "~" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1700 2350 1400
Wire Wire Line
	2350 1400 2050 1400
Wire Wire Line
	1750 1400 1550 1400
Wire Wire Line
	1550 1400 1550 1550
$Comp
L power:Earth #PWR02
U 1 1 5B6B9082
P 2350 3050
F 0 "#PWR02" H 2350 2800 50  0001 C CNN
F 1 "Earth" H 2350 2900 50  0001 C CNN
F 2 "" H 2350 3050 50  0001 C CNN
F 3 "~" H 2350 3050 50  0001 C CNN
	1    2350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2850 2350 2950
$Comp
L Device:C C2
U 1 1 5B6B90CF
P 1800 2600
F 0 "C2" H 1685 2554 50  0000 R CNN
F 1 "10nF" H 1685 2645 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1838 2450 50  0001 C CNN
F 3 "~" H 1800 2600 50  0001 C CNN
	1    1800 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 2350 1800 2350
Wire Wire Line
	1800 2350 1800 2450
Wire Wire Line
	1800 2750 1800 2950
Wire Wire Line
	1800 2950 2350 2950
Connection ~ 2350 2950
Wire Wire Line
	2350 2950 2350 3050
$Comp
L Device:C C1
U 1 1 5B6B91FC
P 1500 2200
F 0 "C1" V 1248 2200 50  0000 C CNN
F 1 "10nF" V 1339 2200 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1538 2050 50  0001 C CNN
F 3 "~" H 1500 2200 50  0001 C CNN
	1    1500 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2200 1650 2200
Wire Wire Line
	1350 2200 900  2200
Wire Wire Line
	900  2100 1200 2100
Wire Wire Line
	1200 2100 1200 1400
Wire Wire Line
	1200 1400 1550 1400
Connection ~ 1550 1400
Wire Wire Line
	3650 2500 3500 2500
Wire Wire Line
	3500 2500 3500 2950
Wire Wire Line
	3500 2950 2350 2950
$Comp
L Connector_Generic:Conn_01x03 IF1
U 1 1 5B6B9B1D
P 3850 1750
F 0 "IF1" H 3929 1792 50  0000 L CNN
F 1 "OSC_IN" H 3929 1701 50  0000 L CNN
F 2 "x-uhf:X-UHF_Interconnect" H 3850 1750 50  0001 C CNN
F 3 "~" H 3850 1750 50  0001 C CNN
	1    3850 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 OUT1
U 1 1 5B6B9B76
P 3850 2400
F 0 "OUT1" H 3929 2442 50  0000 L CNN
F 1 "RF_OUT" H 3929 2351 50  0000 L CNN
F 2 "x-uhf:X-UHF_Interconnect" H 3850 2400 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2300 3500 2300
Wire Wire Line
	3500 2300 3500 2500
Connection ~ 3500 2500
$Comp
L Connector_Generic:Conn_01x03 IN1
U 1 1 5B6B9D7C
P 700 2200
F 0 "IN1" H 620 1875 50  0000 C CNN
F 1 "RF_IN" H 620 1966 50  0000 C CNN
F 2 "x-uhf:X-UHF_Interconnect" H 700 2200 50  0001 C CNN
F 3 "~" H 700 2200 50  0001 C CNN
	1    700  2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 2100 1200 2300
Wire Wire Line
	1200 2300 900  2300
Connection ~ 1200 2100
$Comp
L Device:C C4
U 1 1 5B6BA259
P 3250 1950
F 0 "C4" H 3135 1904 50  0000 R CNN
F 1 "10nF" H 3135 1995 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3288 1800 50  0001 C CNN
F 3 "~" H 3250 1950 50  0001 C CNN
	1    3250 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 1750 3250 1750
Wire Wire Line
	3250 1750 3250 1800
Wire Wire Line
	3250 2100 3250 2150
Wire Wire Line
	3250 2150 3000 2150
Wire Wire Line
	3650 1850 3500 1850
Wire Wire Line
	3500 1850 3500 2300
Connection ~ 3500 2300
Wire Wire Line
	3650 1650 3500 1650
Wire Wire Line
	3500 1650 3500 1850
Connection ~ 3500 1850
$Comp
L Device:C C5
U 1 1 5B6BC0A2
P 3250 2400
F 0 "C5" V 2998 2400 50  0000 C CNN
F 1 "10uF" V 3089 2400 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3288 2250 50  0001 C CNN
F 3 "~" H 3250 2400 50  0001 C CNN
	1    3250 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2400 3000 2400
Wire Wire Line
	3400 2400 3650 2400
Wire Wire Line
	2350 1250 2350 1400
Connection ~ 2350 1400
Wire Wire Line
	2350 1250 2650 1250
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5B6C0849
P 3850 1250
F 0 "J2" H 3930 1242 50  0000 L CNN
F 1 "PWR" H 3930 1151 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Left" H 3850 1250 50  0001 C CNN
F 3 "~" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1250 3350 1250
Wire Wire Line
	3650 1350 3500 1350
Connection ~ 3500 1650
Wire Wire Line
	2950 1650 3350 1650
Wire Wire Line
	2950 1550 2950 1650
$Comp
L Device:CP C6
U 1 1 5B6C4B57
P 3350 1450
F 0 "C6" H 3468 1496 50  0000 L CNN
F 1 "10uF" H 3468 1405 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3388 1300 50  0001 C CNN
F 3 "~" H 3350 1450 50  0001 C CNN
	1    3350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1350 3500 1650
Wire Wire Line
	3350 1300 3350 1250
Connection ~ 3350 1250
Wire Wire Line
	3350 1250 3250 1250
Wire Wire Line
	3350 1600 3350 1650
Connection ~ 3350 1650
Wire Wire Line
	3350 1650 3500 1650
$Comp
L Regulator_Linear:LD1117S50TR_SOT223 U2
U 1 1 5B721F22
P 2950 1250
F 0 "U2" H 2950 1492 50  0000 C CNN
F 1 "LD1117S50TR_SOT223" H 2950 1401 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 2950 1450 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 3050 1000 50  0001 C CNN
	1    2950 1250
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
