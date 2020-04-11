EESchema Schematic File Version 4
EELAYER 30 0
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
L Regulator_Linear:MIC5205-3.3YM5 U1
U 1 1 5E84EEEA
P 4600 2500
F 0 "U1" H 4600 2842 50  0000 C CNN
F 1 "MIC5205-3.3YM5" H 4600 2751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4600 2825 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005785A.pdf" H 4600 2500 50  0001 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny10-TS MCU1
U 1 1 5E8506F0
P 3700 3850
F 0 "MCU1" H 3170 3896 50  0000 R CNN
F 1 "ATtiny10" H 3170 3805 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3700 3850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8127-AVR-8-bit-Microcontroller-ATtiny4-ATtiny5-ATtiny9-ATtiny10_Datasheet.pdf" H 3700 3850 50  0001 C CNN
	1    3700 3850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 5E853C7A
P 3850 2400
F 0 "D1" H 3850 2184 50  0000 C CNN
F 1 "1N4007" H 3850 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3850 2225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3850 2400 50  0001 C CNN
	1    3850 2400
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4007 D2
U 1 1 5E85A77E
P 5250 2400
F 0 "D2" H 5250 2184 50  0000 C CNN
F 1 "1N4007" H 5250 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5250 2225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5250 2400 50  0001 C CNN
	1    5250 2400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5E861444
P 6650 2500
F 0 "J2" H 6678 2476 50  0000 L CNN
F 1 "cell case" H 6678 2385 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6650 2500 50  0001 C CNN
F 3 "~" H 6650 2500 50  0001 C CNN
	1    6650 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E861B4E
P 4100 2750
F 0 "C2" H 4215 2796 50  0000 L CNN
F 1 "0.1uF" H 4215 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4138 2600 50  0001 C CNN
F 3 "~" H 4100 2750 50  0001 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E863DBF
P 3700 4600
F 0 "#PWR0101" H 3700 4350 50  0001 C CNN
F 1 "GND" H 3705 4427 50  0000 C CNN
F 2 "" H 3700 4600 50  0001 C CNN
F 3 "" H 3700 4600 50  0001 C CNN
	1    3700 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E868872
P 4600 2950
F 0 "#PWR0102" H 4600 2700 50  0001 C CNN
F 1 "GND" H 4605 2777 50  0000 C CNN
F 2 "" H 4600 2950 50  0001 C CNN
F 3 "" H 4600 2950 50  0001 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2400 4100 2400
Wire Wire Line
	3700 3250 3700 2600
Wire Wire Line
	3700 2600 3850 2600
Wire Wire Line
	4100 2600 4100 2400
Connection ~ 4100 2400
Wire Wire Line
	4100 2400 4300 2400
Wire Wire Line
	3700 4450 3700 4600
Wire Wire Line
	4600 2800 4600 2950
Wire Wire Line
	4300 3550 4850 3550
Wire Wire Line
	4300 3750 4450 3750
Wire Wire Line
	4900 2400 5100 2400
Wire Wire Line
	6450 2500 6000 2500
$Comp
L power:GND #PWR0103
U 1 1 5E86C678
P 6000 2800
F 0 "#PWR0103" H 6000 2550 50  0001 C CNN
F 1 "GND" H 6005 2627 50  0000 C CNN
F 2 "" H 6000 2800 50  0001 C CNN
F 3 "" H 6000 2800 50  0001 C CNN
	1    6000 2800
	1    0    0    -1  
$EndComp
Connection ~ 4100 2600
$Comp
L power:GND #PWR0104
U 1 1 5E86DA39
P 4100 2950
F 0 "#PWR0104" H 4100 2700 50  0001 C CNN
F 1 "GND" H 4105 2777 50  0000 C CNN
F 2 "" H 4100 2950 50  0001 C CNN
F 3 "" H 4100 2950 50  0001 C CNN
	1    4100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2900 4100 2950
$Comp
L Device:CP1 C1
U 1 1 5E86E754
P 3850 2750
F 0 "C1" H 3650 2800 50  0000 L CNN
F 1 "100uF" H 3650 2700 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3850 2750 50  0001 C CNN
F 3 "~" H 3850 2750 50  0001 C CNN
	1    3850 2750
	1    0    0    -1  
$EndComp
Connection ~ 3850 2600
Wire Wire Line
	3850 2600 4100 2600
Wire Wire Line
	3850 2900 4100 2900
Connection ~ 4100 2900
$Comp
L power:GND #PWR0105
U 1 1 5E870A99
P 3150 3000
F 0 "#PWR0105" H 3150 2750 50  0001 C CNN
F 1 "GND" H 3155 2827 50  0000 C CNN
F 2 "" H 3150 3000 50  0001 C CNN
F 3 "" H 3150 3000 50  0001 C CNN
	1    3150 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E870EA8
P 5100 2550
F 0 "C3" H 5215 2596 50  0000 L CNN
F 1 "2.2uF" H 5215 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5138 2400 50  0001 C CNN
F 3 "~" H 5100 2550 50  0001 C CNN
	1    5100 2550
	1    0    0    -1  
$EndComp
Connection ~ 5100 2400
$Comp
L power:GND #PWR0106
U 1 1 5E8718C7
P 5100 2950
F 0 "#PWR0106" H 5100 2700 50  0001 C CNN
F 1 "GND" H 5105 2777 50  0000 C CNN
F 2 "" H 5100 2950 50  0001 C CNN
F 3 "" H 5100 2950 50  0001 C CNN
	1    5100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2700 5100 2950
Wire Wire Line
	4300 2500 4300 3250
Wire Wire Line
	4300 3250 4450 3250
Wire Wire Line
	4450 3250 4450 3750
Wire Wire Line
	6450 2600 6100 2600
Wire Wire Line
	6100 2600 6100 2100
Wire Wire Line
	6100 2100 4100 2100
Wire Wire Line
	4100 2100 4100 2400
$Comp
L Device:R R2
U 1 1 5E875B7B
P 6300 2700
F 0 "R2" V 6200 2700 50  0000 C CNN
F 1 "R" H 6370 2655 50  0001 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6230 2700 50  0001 C CNN
F 3 "~" H 6300 2700 50  0001 C CNN
	1    6300 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 3450 4850 3550
Wire Wire Line
	4650 3650 4650 3250
Wire Wire Line
	4650 3250 5900 3250
Wire Wire Line
	4650 3650 4300 3650
$Comp
L Device:R R1
U 1 1 5E878747
P 5650 2400
F 0 "R1" V 5765 2400 50  0000 C CNN
F 1 "R" V 5766 2400 50  0001 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5580 2400 50  0001 C CNN
F 3 "~" H 5650 2400 50  0001 C CNN
	1    5650 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 2400 6450 2400
Wire Wire Line
	5900 2400 5900 3250
Wire Wire Line
	5800 2400 5900 2400
Connection ~ 5900 2400
Wire Wire Line
	5400 2400 5500 2400
Wire Wire Line
	2950 2400 3700 2400
Wire Wire Line
	6000 2500 6000 2700
Wire Wire Line
	6000 2700 6150 2700
Connection ~ 6000 2700
Wire Wire Line
	6000 2700 6000 2800
Wire Wire Line
	6450 3450 6450 2700
Wire Wire Line
	4850 3450 6450 3450
Connection ~ 6450 2700
$Comp
L Connector:Conn_01x05_Female J1
U 1 1 5E88369A
P 2750 2600
F 0 "J1" H 2642 2175 50  0000 C CNN
F 1 "power in" H 2642 2266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2750 2600 50  0001 C CNN
F 3 "~" H 2750 2600 50  0001 C CNN
	1    2750 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 2800 3150 2800
Wire Wire Line
	3150 2800 3150 3000
NoConn ~ 2950 2500
NoConn ~ 2950 2600
NoConn ~ 2950 2700
NoConn ~ 4900 2500
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5E8A30DD
P 6250 3850
F 0 "J3" H 6278 3876 50  0000 L CNN
F 1 "P1" H 6278 3785 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6250 3850 50  0001 C CNN
F 3 "~" H 6250 3850 50  0001 C CNN
	1    6250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3850 6050 3850
$Comp
L Device:LED LD2
U 1 1 5E85237C
P 4200 1700
F 0 "LD2" H 4193 1445 50  0000 C CNN
F 1 "charge" H 4193 1536 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 4200 1700 50  0001 C CNN
F 3 "~" H 4200 1700 50  0001 C CNN
	1    4200 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED LD1
U 1 1 5E856B6E
P 3550 1700
F 0 "LD1" H 3543 1445 50  0000 C CNN
F 1 "stop" H 3543 1536 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 3550 1700 50  0001 C CNN
F 3 "~" H 3550 1700 50  0001 C CNN
	1    3550 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5E8592CC
P 3250 1700
F 0 "R3" V 3365 1700 50  0000 C CNN
F 1 "R" V 3366 1700 50  0001 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 1700 50  0001 C CNN
F 3 "~" H 3250 1700 50  0001 C CNN
	1    3250 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E859CB7
P 4500 1700
F 0 "R4" V 4615 1700 50  0000 C CNN
F 1 "R" V 4616 1700 50  0001 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4430 1700 50  0001 C CNN
F 3 "~" H 4500 1700 50  0001 C CNN
	1    4500 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E85C553
P 5000 1700
F 0 "#PWR0107" H 5000 1450 50  0001 C CNN
F 1 "GND" H 5005 1527 50  0000 C CNN
F 2 "" H 5000 1700 50  0001 C CNN
F 3 "" H 5000 1700 50  0001 C CNN
	1    5000 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 1700 5000 1700
Wire Wire Line
	3700 1700 3900 1700
Wire Wire Line
	4100 2100 3000 2100
Wire Wire Line
	3000 2100 3000 1700
Wire Wire Line
	3000 1700 3100 1700
Connection ~ 4100 2100
Wire Wire Line
	4300 3250 3850 3250
Wire Wire Line
	3850 3250 3850 3000
Wire Wire Line
	3850 3000 3550 3000
Wire Wire Line
	3550 3000 3550 1900
Wire Wire Line
	3550 1900 3900 1900
Wire Wire Line
	3900 1900 3900 1700
Connection ~ 4300 3250
Connection ~ 3900 1700
Wire Wire Line
	3900 1700 4050 1700
$EndSCHEMATC
