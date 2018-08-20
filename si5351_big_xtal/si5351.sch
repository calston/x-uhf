EESchema Schematic File Version 4
LIBS:si5351-cache
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
L x-uhf:SI5351A U2
U 1 1 5B6C95F2
P 4200 2050
F 0 "U2" H 4200 2615 50  0000 C CNN
F 1 "SI5351A" H 4200 2524 50  0000 C CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 4200 2050 50  0001 C CNN
F 3 "DOCUMENTATION" H 4200 2050 50  0001 C CNN
	1    4200 2050
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U1
U 1 1 5B6C96D2
P 1900 1850
F 0 "U1" H 1900 2092 50  0000 C CNN
F 1 "LD1117-3.3" H 1900 2001 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 1900 2100 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 1900 1850 50  0001 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5B6C9791
P 2350 2000
F 0 "C2" H 2465 2046 50  0000 L CNN
F 1 "1u" H 2465 1955 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 2388 1850 50  0001 C CNN
F 3 "~" H 2350 2000 50  0001 C CNN
	1    2350 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5B6C987F
P 1450 2000
F 0 "C1" H 1565 2046 50  0000 L CNN
F 1 "10u" H 1565 1955 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 1488 1850 50  0001 C CNN
F 3 "~" H 1450 2000 50  0001 C CNN
	1    1450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1850 1450 1850
Connection ~ 1900 2150
Wire Wire Line
	2350 1850 2200 1850
Wire Wire Line
	2350 2150 1900 2150
Wire Wire Line
	1450 2150 1900 2150
Wire Wire Line
	3550 1850 3400 1850
Connection ~ 2350 1850
Wire Wire Line
	3550 1950 3100 1950
Wire Wire Line
	3550 2050 3350 2050
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5B6C9EBD
P 6350 1700
F 0 "J2" H 6429 1742 50  0000 L CNN
F 1 "CLK0" H 6429 1651 50  0000 L CNN
F 2 "x-uhf:X-UHF_Interconnect" H 6350 1700 50  0001 C CNN
F 3 "~" H 6350 1700 50  0001 C CNN
	1    6350 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5B6C9F13
P 6350 2100
F 0 "J3" H 6429 2142 50  0000 L CNN
F 1 "CLK1" H 6429 2051 50  0000 L CNN
F 2 "x-uhf:X-UHF_Interconnect" H 6350 2100 50  0001 C CNN
F 3 "~" H 6350 2100 50  0001 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5B6C9F41
P 6350 2500
F 0 "J4" H 6429 2542 50  0000 L CNN
F 1 "CLK2" H 6429 2451 50  0000 L CNN
F 2 "x-uhf:X-UHF_Interconnect" H 6350 2500 50  0001 C CNN
F 3 "~" H 6350 2500 50  0001 C CNN
	1    6350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1700 5600 1850
Wire Wire Line
	5600 1850 4850 1850
Wire Wire Line
	5600 2100 5600 1950
Wire Wire Line
	5600 1950 4850 1950
Wire Wire Line
	5600 2500 5600 2250
Wire Wire Line
	5600 2250 4850 2250
Wire Wire Line
	6150 1600 6050 1600
Wire Wire Line
	6050 1600 6050 1800
Wire Wire Line
	6050 1800 6150 1800
Wire Wire Line
	6050 1800 6050 2000
Wire Wire Line
	6050 2000 6150 2000
Connection ~ 6050 1800
Wire Wire Line
	6050 2000 6050 2200
Wire Wire Line
	6050 2200 6150 2200
Connection ~ 6050 2000
Wire Wire Line
	6050 2200 6050 2400
Wire Wire Line
	6050 2400 6150 2400
Connection ~ 6050 2200
Wire Wire Line
	6050 2400 6050 2600
Wire Wire Line
	6050 2600 6150 2600
Connection ~ 6050 2400
$Comp
L power:Earth #PWR01
U 1 1 5B6CAE8B
P 6050 2750
F 0 "#PWR01" H 6050 2500 50  0001 C CNN
F 1 "Earth" H 6050 2600 50  0001 C CNN
F 2 "" H 6050 2750 50  0001 C CNN
F 3 "~" H 6050 2750 50  0001 C CNN
	1    6050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2600 6050 2700
Connection ~ 6050 2600
$Comp
L Device:C C4
U 1 1 5B6CB910
P 5850 1700
F 0 "C4" V 5598 1700 50  0000 C CNN
F 1 "100n" V 5689 1700 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 5888 1550 50  0001 C CNN
F 3 "~" H 5850 1700 50  0001 C CNN
	1    5850 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5B6CB972
P 5850 2100
F 0 "C5" V 5598 2100 50  0000 C CNN
F 1 "100n" V 5689 2100 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 5888 1950 50  0001 C CNN
F 3 "~" H 5850 2100 50  0001 C CNN
	1    5850 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5B6CB9A6
P 5850 2500
F 0 "C6" V 5598 2500 50  0000 C CNN
F 1 "100n" V 5689 2500 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 5888 2350 50  0001 C CNN
F 3 "~" H 5850 2500 50  0001 C CNN
	1    5850 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2500 6150 2500
Wire Wire Line
	6150 2100 6000 2100
Wire Wire Line
	6150 1700 6000 1700
Wire Wire Line
	5600 1700 5700 1700
Wire Wire Line
	5600 2100 5700 2100
Wire Wire Line
	5700 2500 5600 2500
$Comp
L Device:C C3
U 1 1 5B6CE913
P 5100 2550
F 0 "C3" V 5352 2550 50  0000 C CNN
F 1 "1u" V 5261 2550 50  0000 C CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 5138 2400 50  0001 C CNN
F 3 "~" H 5100 2550 50  0001 C CNN
	1    5100 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 2150 4900 2150
Wire Wire Line
	4900 2150 4900 2550
Wire Wire Line
	4900 2550 4950 2550
Wire Wire Line
	4850 2050 5300 2050
Wire Wire Line
	5300 2050 5300 2550
Wire Wire Line
	5300 2550 5250 2550
Wire Wire Line
	5300 2550 5300 2700
Wire Wire Line
	5300 2700 6050 2700
Connection ~ 5300 2550
Connection ~ 6050 2700
Wire Wire Line
	6050 2700 6050 2750
Wire Wire Line
	1900 2700 1900 2150
Connection ~ 5300 2700
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5B6D06A1
P 900 2550
F 0 "J1" H 820 2125 50  0000 C CNN
F 1 "PWR_IIC" H 820 2216 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm_SMD_Pin1Left" H 900 2550 50  0001 C CNN
F 3 "~" H 900 2550 50  0001 C CNN
	1    900  2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 1850 1200 1850
Wire Wire Line
	1200 1850 1200 2350
Wire Wire Line
	1200 2350 1100 2350
Connection ~ 1450 1850
Wire Wire Line
	1450 2150 1300 2150
Wire Wire Line
	1300 2150 1300 2450
Wire Wire Line
	1300 2450 1100 2450
Connection ~ 1450 2150
Wire Wire Line
	3550 2150 3400 2150
Wire Wire Line
	3400 2150 3400 2550
Wire Wire Line
	3400 2550 2850 2550
Wire Wire Line
	1100 2650 2600 2650
Wire Wire Line
	3450 2650 3450 2250
Wire Wire Line
	3450 2250 3550 2250
$Comp
L Device:R R2
U 1 1 5B6D3B11
P 2850 2350
F 0 "R2" H 2920 2396 50  0000 L CNN
F 1 "10k" H 2920 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2780 2350 50  0001 C CNN
F 3 "~" H 2850 2350 50  0001 C CNN
	1    2850 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5B6D3CDB
P 2600 2350
F 0 "R1" H 2670 2396 50  0000 L CNN
F 1 "10k" H 2670 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2530 2350 50  0001 C CNN
F 3 "~" H 2600 2350 50  0001 C CNN
	1    2600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2500 2850 2550
Connection ~ 2850 2550
Wire Wire Line
	2850 2550 1100 2550
Wire Wire Line
	2600 2500 2600 2650
Connection ~ 2600 2650
Wire Wire Line
	2600 2650 3450 2650
Wire Wire Line
	2600 2200 2600 1850
Connection ~ 2600 1850
Wire Wire Line
	2600 1850 2350 1850
Wire Wire Line
	2850 2200 2850 1850
Connection ~ 2850 1850
Wire Wire Line
	2850 1850 2600 1850
Wire Wire Line
	3350 2050 3350 2250
Wire Wire Line
	3100 2250 3350 2250
Wire Wire Line
	4900 2550 4200 2550
Wire Wire Line
	4200 2550 4200 1500
Wire Wire Line
	4200 1500 3400 1500
Wire Wire Line
	3400 1500 3400 1850
Connection ~ 4900 2550
Connection ~ 3400 1850
Wire Wire Line
	2850 1850 3400 1850
Wire Wire Line
	1900 2700 5300 2700
$Comp
L Device:Crystal Y1
U 1 1 5B776FE1
P 3100 2100
F 0 "Y1" V 3054 2231 50  0000 L CNN
F 1 "Crystal" V 3145 2231 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_HC49-SD" H 3100 2100 50  0001 C CNN
F 3 "~" H 3100 2100 50  0001 C CNN
	1    3100 2100
	0    1    1    0   
$EndComp
$EndSCHEMATC
