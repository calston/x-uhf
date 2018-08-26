EESchema Schematic File Version 4
LIBS:bfr93-amplifier-cache
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
L Transistor_BJT:BFR92 Q1
U 1 1 5B811E4A
P 2700 2250
F 0 "Q1" H 2891 2296 50  0000 L CNN
F 1 "BFR93A" H 2891 2205 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2900 2175 50  0001 L CIN
F 3 "http://www.nxp.com/documents/data_sheet/BFR92A_N.pdf" H 2700 2250 50  0001 L CNN
	1    2700 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5B81210F
P 2150 1700
F 0 "R1" H 2220 1746 50  0000 L CNN
F 1 "1K" H 2220 1655 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2080 1700 50  0001 C CNN
F 3 "~" H 2150 1700 50  0001 C CNN
	1    2150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5B812181
P 2800 1700
F 0 "R3" H 2870 1746 50  0000 L CNN
F 1 "220" H 2870 1655 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2730 1700 50  0001 C CNN
F 3 "~" H 2800 1700 50  0001 C CNN
	1    2800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5B8121B1
P 2800 2800
F 0 "R4" H 2870 2846 50  0000 L CNN
F 1 "220" H 2870 2755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2730 2800 50  0001 C CNN
F 3 "~" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B812231
P 2150 2800
F 0 "R2" H 2220 2846 50  0000 L CNN
F 1 "1K" H 2220 2755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2080 2800 50  0001 C CNN
F 3 "~" H 2150 2800 50  0001 C CNN
	1    2150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1850 2150 2250
Wire Wire Line
	2500 2250 2150 2250
Connection ~ 2150 2250
Wire Wire Line
	2150 2250 2150 2650
Wire Wire Line
	2800 1850 2800 1950
Wire Wire Line
	2800 2450 2800 2550
$Comp
L power:Earth #PWR03
U 1 1 5B8122D6
P 2500 3150
F 0 "#PWR03" H 2500 2900 50  0001 C CNN
F 1 "Earth" H 2500 3000 50  0001 C CNN
F 2 "" H 2500 3150 50  0001 C CNN
F 3 "~" H 2500 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2950 2150 3050
Wire Wire Line
	2150 3050 2500 3050
Wire Wire Line
	2800 3050 2800 2950
Wire Wire Line
	2500 3150 2500 3050
Connection ~ 2500 3050
Wire Wire Line
	2500 3050 2800 3050
$Comp
L power:VCC #PWR02
U 1 1 5B8123D1
P 2450 1350
F 0 "#PWR02" H 2450 1200 50  0001 C CNN
F 1 "VCC" H 2467 1523 50  0000 C CNN
F 2 "" H 2450 1350 50  0001 C CNN
F 3 "" H 2450 1350 50  0001 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1550 2800 1450
Wire Wire Line
	2800 1450 2450 1450
Wire Wire Line
	2150 1450 2150 1550
Wire Wire Line
	2450 1350 2450 1450
Connection ~ 2450 1450
Wire Wire Line
	2450 1450 2150 1450
$Comp
L Device:C C2
U 1 1 5B8125D6
P 3150 2800
F 0 "C2" H 3265 2846 50  0000 L CNN
F 1 "100n" H 3265 2755 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3188 2650 50  0001 C CNN
F 3 "~" H 3150 2800 50  0001 C CNN
	1    3150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2650 3150 2550
Wire Wire Line
	3150 2550 2800 2550
Connection ~ 2800 2550
Wire Wire Line
	2800 2550 2800 2650
$Comp
L Device:C C3
U 1 1 5B812F56
P 3300 1950
F 0 "C3" V 3048 1950 50  0000 C CNN
F 1 "100n" V 3139 1950 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3338 1800 50  0001 C CNN
F 3 "~" H 3300 1950 50  0001 C CNN
	1    3300 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 1950 2800 1950
Connection ~ 2800 1950
Wire Wire Line
	2800 1950 2800 2050
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5B8131A3
P 3950 1950
F 0 "J3" H 4030 1992 50  0000 L CNN
F 1 "OUT" H 4030 1901 50  0000 L CNN
F 2 "x-uhf:X-UHF_Interconnect" H 3950 1950 50  0001 C CNN
F 3 "~" H 3950 1950 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5B8131F5
P 1150 2250
F 0 "J1" H 1070 1925 50  0000 C CNN
F 1 "IN" H 1070 2016 50  0000 C CNN
F 2 "x-uhf:X-UHF_Interconnect" H 1150 2250 50  0001 C CNN
F 3 "~" H 1150 2250 50  0001 C CNN
	1    1150 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5B813297
P 1750 2250
F 0 "C1" V 1498 2250 50  0000 C CNN
F 1 "100n" V 1589 2250 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1788 2100 50  0001 C CNN
F 3 "~" H 1750 2250 50  0001 C CNN
	1    1750 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 2250 2150 2250
Wire Wire Line
	1600 2250 1350 2250
Wire Wire Line
	1350 2150 1450 2150
Wire Wire Line
	1450 2150 1450 2350
Wire Wire Line
	1450 2350 1350 2350
Wire Wire Line
	3750 1850 3650 1850
Wire Wire Line
	3650 1850 3650 2050
Wire Wire Line
	3650 2050 3750 2050
Wire Wire Line
	3750 1950 3450 1950
$Comp
L power:Earth #PWR04
U 1 1 5B813FE6
P 3650 2150
F 0 "#PWR04" H 3650 1900 50  0001 C CNN
F 1 "Earth" H 3650 2000 50  0001 C CNN
F 2 "" H 3650 2150 50  0001 C CNN
F 3 "~" H 3650 2150 50  0001 C CNN
	1    3650 2150
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR01
U 1 1 5B81400C
P 1450 2450
F 0 "#PWR01" H 1450 2200 50  0001 C CNN
F 1 "Earth" H 1450 2300 50  0001 C CNN
F 2 "" H 1450 2450 50  0001 C CNN
F 3 "~" H 1450 2450 50  0001 C CNN
	1    1450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2450 1450 2350
Connection ~ 1450 2350
Wire Wire Line
	3650 2150 3650 2050
Connection ~ 3650 2050
Wire Wire Line
	3150 2950 3150 3050
Wire Wire Line
	3150 3050 2800 3050
Connection ~ 2800 3050
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5B8163EC
P 3150 1050
F 0 "J2" V 3116 862 50  0000 R CNN
F 1 "PWR" V 3025 862 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Left" H 3150 1050 50  0001 C CNN
F 3 "~" H 3150 1050 50  0001 C CNN
	1    3150 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 1250 2800 1250
Wire Wire Line
	2800 1250 2800 1450
Connection ~ 2800 1450
Wire Wire Line
	3250 1250 3650 1250
Wire Wire Line
	3650 1250 3650 1450
Connection ~ 3650 1850
$Comp
L Device:C C?
U 1 1 5B82EA62
P 3200 1450
F 0 "C?" V 2948 1450 50  0000 C CNN
F 1 "10u" V 3039 1450 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3238 1300 50  0001 C CNN
F 3 "~" H 3200 1450 50  0001 C CNN
	1    3200 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1450 2800 1450
Wire Wire Line
	3350 1450 3650 1450
Connection ~ 3650 1450
Wire Wire Line
	3650 1450 3650 1850
$EndSCHEMATC
