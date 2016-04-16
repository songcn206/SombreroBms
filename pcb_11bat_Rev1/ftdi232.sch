EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ltc2630
LIBS:lt3010-5
LIBS:ad7280a
LIBS:myopto
LIBS:ina197
LIBS:hrs1k
LIBS:ftdichip
LIBS:ntd5867nl
LIBS:SPI_Flash
LIBS:si8422
LIBS:lt3990-3
LIBS:tja1052i
LIBS:nup2105l
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 11
Title ""
Date "16 apr 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 10900 2800 2    60   Input ~ 0
TXD
Text HLabel 10900 2900 2    60   Output ~ 0
RXD
$Comp
L R R63
U 1 1 55ECC802
P 7600 2900
F 0 "R63" V 7680 2900 40  0000 C CNN
F 1 "1K" V 7607 2901 40  0000 C CNN
F 2 "~" V 7530 2900 30  0000 C CNN
F 3 "~" H 7600 2900 30  0000 C CNN
	1    7600 2900
	0    -1   -1   0   
$EndComp
$Comp
L C C55
U 1 1 55ECC811
P 7300 1900
F 0 "C55" H 7300 2000 40  0000 L CNN
F 1 "1uF" H 7306 1815 40  0000 L CNN
F 2 "~" H 7338 1750 30  0000 C CNN
F 3 "~" H 7300 1900 60  0000 C CNN
	1    7300 1900
	1    0    0    -1  
$EndComp
$Comp
L C C54
U 1 1 55ECC82A
P 7000 1900
F 0 "C54" H 7000 2000 40  0000 L CNN
F 1 "0.1uF" H 7006 1815 40  0000 L CNN
F 2 "~" H 7038 1750 30  0000 C CNN
F 3 "~" H 7000 1900 60  0000 C CNN
	1    7000 1900
	1    0    0    -1  
$EndComp
$Comp
L C C53
U 1 1 55ECC830
P 4350 2800
F 0 "C53" H 4350 2900 40  0000 L CNN
F 1 "0.1uF" H 4356 2715 40  0000 L CNN
F 2 "~" H 4388 2650 30  0000 C CNN
F 3 "~" H 4350 2800 60  0000 C CNN
	1    4350 2800
	0    1    1    0   
$EndComp
$Comp
L R R64
U 1 1 55ECC84F
P 8500 3900
F 0 "R64" V 8580 3900 40  0000 C CNN
F 1 "4,7K" V 8507 3901 40  0000 C CNN
F 2 "~" V 8430 3900 30  0000 C CNN
F 3 "~" H 8500 3900 30  0000 C CNN
	1    8500 3900
	0    1    1    0   
$EndComp
$Comp
L LED D7
U 1 1 55ECC86A
P 7900 3900
F 0 "D7" H 7900 4000 50  0000 C CNN
F 1 "LED" H 7900 3800 50  0000 C CNN
F 2 "~" H 7900 3900 60  0000 C CNN
F 3 "~" H 7900 3900 60  0000 C CNN
	1    7900 3900
	-1   0    0    1   
$EndComp
$Comp
L FILTER FB5
U 1 1 55ECC872
P 2600 3600
F 0 "FB5" H 2600 3750 60  0000 C CNN
F 1 "FILTER" H 2600 3500 60  0000 C CNN
F 2 "~" H 2600 3600 60  0000 C CNN
F 3 "~" H 2600 3600 60  0000 C CNN
	1    2600 3600
	1    0    0    -1  
$EndComp
$Comp
L USB-MINI-B CON1
U 1 1 55ECD9D4
P 1600 3150
F 0 "CON1" H 1350 3600 60  0000 C CNN
F 1 "USB-MINI-B" H 1550 2650 60  0000 C CNN
F 2 "" H 1600 3150 60  0000 C CNN
F 3 "" H 1600 3150 60  0000 C CNN
	1    1600 3150
	-1   0    0    1   
$EndComp
Text Label 4650 2800 0    60   ~ 0
3V3OUT
$Comp
L CRYSTAL X2
U 1 1 55ECE8C2
P 3400 4300
F 0 "X2" H 3400 4450 60  0000 C CNN
F 1 "CRYSTAL 12Mhz" H 3400 4150 60  0000 C CNN
F 2 "~" H 3400 4300 60  0000 C CNN
F 3 "~" H 3400 4300 60  0000 C CNN
	1    3400 4300
	-1   0    0    1   
$EndComp
Text Label 3050 2850 0    60   ~ 0
USBGND
$Comp
L C C51
U 1 1 56142B92
P 3000 4700
F 0 "C51" H 3000 4800 40  0000 L CNN
F 1 "22P" H 3006 4615 40  0000 L CNN
F 2 "~" H 3038 4550 30  0000 C CNN
F 3 "~" H 3000 4700 60  0000 C CNN
	1    3000 4700
	1    0    0    -1  
$EndComp
$Comp
L C C52
U 1 1 56142BAE
P 3800 4700
F 0 "C52" H 3800 4800 40  0000 L CNN
F 1 "22P" H 3806 4615 40  0000 L CNN
F 2 "~" H 3838 4550 30  0000 C CNN
F 3 "~" H 3800 4700 60  0000 C CNN
	1    3800 4700
	1    0    0    -1  
$EndComp
$Comp
L R R62
U 1 1 56142D2D
P 7600 2800
F 0 "R62" V 7680 2800 40  0000 C CNN
F 1 "1K" V 7607 2801 40  0000 C CNN
F 2 "~" V 7530 2800 30  0000 C CNN
F 3 "~" H 7600 2800 30  0000 C CNN
	1    7600 2800
	0    -1   -1   0   
$EndComp
$Comp
L FT232RQ U9
U 1 1 5613AD71
P 6050 3700
F 0 "U9" H 6050 3700 60  0000 C CNN
F 1 "FT232RQ" H 6050 3700 60  0000 C CNN
F 2 "" H 6050 3700 60  0000 C CNN
F 3 "" H 6050 3700 60  0000 C CNN
	1    6050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2900 8100 2900
Wire Wire Line
	7850 2800 8250 2800
Wire Wire Line
	6950 2800 7350 2800
Wire Wire Line
	7350 2900 6950 2900
Wire Wire Line
	2150 2850 3750 2850
Wire Wire Line
	4550 2800 5150 2800
Wire Wire Line
	8250 3900 8100 3900
Wire Wire Line
	8750 3900 9150 3900
Wire Wire Line
	1050 2850 850  2850
Wire Wire Line
	850  2850 850  3900
Wire Wire Line
	1050 3450 850  3450
Connection ~ 850  3450
Wire Wire Line
	1050 3300 850  3300
Connection ~ 850  3300
Wire Wire Line
	1050 3000 850  3000
Connection ~ 850  3000
Wire Wire Line
	3700 4300 5150 4300
Wire Wire Line
	3800 4300 3800 4500
Connection ~ 3800 4300
Wire Wire Line
	3100 4300 3000 4300
Wire Wire Line
	3000 3900 3000 4500
Wire Wire Line
	3000 4900 3000 5000
Connection ~ 3000 5000
Wire Wire Line
	3800 4900 3800 5000
Connection ~ 3800 5000
Connection ~ 3000 4300
Wire Wire Line
	2150 3450 2200 3450
Wire Wire Line
	2200 3450 2200 3850
Wire Wire Line
	2200 3600 2250 3600
Wire Wire Line
	5150 3900 3000 3900
Text Label 3150 3600 0    60   ~ 0
USBVCC
Wire Wire Line
	2950 3600 3150 3600
Wire Wire Line
	5950 5000 5950 5150
Wire Wire Line
	6350 5000 6350 5150
Connection ~ 6350 5150
Wire Wire Line
	6150 5000 6150 5150
Connection ~ 6150 5150
Wire Wire Line
	5750 5150 5750 5000
Connection ~ 5950 5150
Text Label 7450 1650 0    60   ~ 0
USBVCC
Wire Wire Line
	2150 3300 4050 3300
Wire Wire Line
	4050 3300 4050 3000
Wire Wire Line
	4050 3000 5150 3000
Wire Wire Line
	5150 3300 4250 3300
Wire Wire Line
	4250 3300 4250 3450
Wire Wire Line
	4250 3450 3450 3450
Wire Wire Line
	3450 3450 3450 3150
Wire Wire Line
	3450 3150 2150 3150
Text Label 9150 3900 0    60   ~ 0
USBVCC
Wire Wire Line
	7700 3900 6950 3900
Wire Wire Line
	6150 1650 6150 2500
Wire Wire Line
	7000 2100 7000 2300
Wire Wire Line
	7000 2300 7700 2300
Wire Wire Line
	7300 2100 7300 2300
Connection ~ 7300 2300
Wire Wire Line
	7300 1700 7300 1650
Connection ~ 7300 1650
Wire Wire Line
	7000 1700 7000 1650
Connection ~ 7000 1650
Wire Wire Line
	5950 1650 7450 1650
Wire Wire Line
	5950 1450 5950 2500
Connection ~ 6150 1650
$Comp
L C C50
U 1 1 5613B92E
P 2200 4050
F 0 "C50" H 2200 4150 40  0000 L CNN
F 1 "10nF" H 2206 3965 40  0000 L CNN
F 2 "~" H 2238 3900 30  0000 C CNN
F 3 "~" H 2200 4050 60  0000 C CNN
	1    2200 4050
	1    0    0    -1  
$EndComp
Connection ~ 2200 3600
Wire Wire Line
	2200 4250 2200 5000
Connection ~ 2200 5000
Wire Wire Line
	5150 4600 4000 4600
Wire Wire Line
	4000 4600 4000 5000
Connection ~ 4000 5000
Wire Wire Line
	5750 5150 6850 5150
NoConn ~ 5150 3600
NoConn ~ 6950 4100
NoConn ~ 6950 4300
NoConn ~ 6950 4500
NoConn ~ 6950 4700
NoConn ~ 6950 3200
NoConn ~ 6950 3300
NoConn ~ 6950 3400
NoConn ~ 6950 3500
$Comp
L PWR_FLAG #FLG02
U 1 1 56144C35
P 2000 3800
F 0 "#FLG02" H 2000 3895 30  0001 C CNN
F 1 "PWR_FLAG" H 2000 3980 30  0000 C CNN
F 2 "" H 2000 3800 60  0000 C CNN
F 3 "" H 2000 3800 60  0000 C CNN
	1    2000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 3800 2200 3800
Connection ~ 2200 3800
$Comp
L PWR_FLAG #FLG03
U 1 1 56144CDC
P 5950 1450
F 0 "#FLG03" H 5950 1545 30  0001 C CNN
F 1 "PWR_FLAG" H 5950 1630 30  0000 C CNN
F 2 "" H 5950 1450 60  0000 C CNN
F 3 "" H 5950 1450 60  0000 C CNN
	1    5950 1450
	1    0    0    -1  
$EndComp
Connection ~ 5950 1650
Wire Wire Line
	1700 5000 1700 3900
Wire Wire Line
	1700 3900 850  3900
NoConn ~ 2150 3000
NoConn ~ 6950 3000
NoConn ~ 6950 3100
$Comp
L SI8422 U?
U 1 1 57120ECD
P 9100 3050
F 0 "U?" H 8900 3000 60  0000 C CNN
F 1 "SI8422" H 9000 2900 60  0000 C CNN
F 2 "~" H 9100 3050 60  0000 C CNN
F 3 "~" H 9100 3050 60  0000 C CNN
	1    9100 3050
	1    0    0    -1  
$EndComp
Text Label 4200 5000 0    60   ~ 0
USBGND
Wire Wire Line
	4200 5000 1700 5000
Text Label 7700 2300 0    60   ~ 0
USBGND
Text Label 6850 5150 0    60   ~ 0
USBGND
Text Label 7700 2550 0    60   ~ 0
USBVCC
Wire Wire Line
	7700 2550 8350 2550
Wire Wire Line
	8350 2550 8350 2700
Wire Wire Line
	8350 2700 8550 2700
Wire Wire Line
	8550 3000 8350 3000
Wire Wire Line
	8350 3000 8350 3150
Wire Wire Line
	8350 3150 7700 3150
Text Label 7700 3150 0    60   ~ 0
USBGND
Wire Wire Line
	4150 2800 3750 2800
Wire Wire Line
	3750 2800 3750 2850
Wire Wire Line
	8550 2900 8250 2900
Wire Wire Line
	8250 2900 8250 2800
Wire Wire Line
	8100 2900 8100 2750
Wire Wire Line
	8100 2750 8400 2750
Wire Wire Line
	8400 2750 8400 2800
Wire Wire Line
	8400 2800 8550 2800
Wire Wire Line
	9700 2800 10900 2800
Wire Wire Line
	9700 2900 10900 2900
Wire Wire Line
	9700 3000 10000 3000
Wire Wire Line
	10000 3000 10000 3050
Wire Wire Line
	10000 3050 10150 3050
Wire Wire Line
	9700 2700 10000 2700
Wire Wire Line
	10000 2700 10000 2650
Wire Wire Line
	10000 2650 10150 2650
Text HLabel 10150 2650 2    60   Input ~ 0
BMSVCC
Text HLabel 10150 3050 2    60   Input ~ 0
BMSGND
$Comp
L TST P?
U 1 1 57126F2E
P 10750 2700
F 0 "P?" H 10750 3000 40  0000 C CNN
F 1 "TST" H 10750 2950 30  0000 C CNN
F 2 "~" H 10750 2700 60  0000 C CNN
F 3 "~" H 10750 2700 60  0000 C CNN
	1    10750 2700
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 57126F3B
P 10750 3000
F 0 "P?" H 10750 3300 40  0000 C CNN
F 1 "TST" H 10750 3250 30  0000 C CNN
F 2 "~" H 10750 3000 60  0000 C CNN
F 3 "~" H 10750 3000 60  0000 C CNN
	1    10750 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10750 2900 10750 3000
Connection ~ 10750 2900
Wire Wire Line
	10750 2800 10750 2700
Connection ~ 10750 2800
$EndSCHEMATC
