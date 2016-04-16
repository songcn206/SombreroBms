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
Sheet 11 11
Title ""
Date "16 apr 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TJA1052I U?
U 1 1 571465EB
P 4250 4500
F 0 "U?" H 4050 4450 60  0000 C CNN
F 1 "TJA1052I" H 4200 4350 60  0000 C CNN
F 2 "~" H 4350 4500 60  0000 C CNN
F 3 "~" H 4350 4500 60  0000 C CNN
	1    4250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3750 3650 3750
Wire Wire Line
	1650 4450 3650 4450
Wire Wire Line
	3300 3850 3300 4450
Wire Wire Line
	3300 4350 3650 4350
Connection ~ 3300 4450
Wire Wire Line
	3650 3850 3300 3850
Wire Wire Line
	3650 3950 2850 3950
Wire Wire Line
	3650 4150 2850 4150
$Comp
L R R?
U 1 1 57146628
P 7850 4500
F 0 "R?" V 7930 4500 40  0000 C CNN
F 1 "4,7k" V 7857 4501 40  0000 C CNN
F 2 "~" V 7780 4500 30  0000 C CNN
F 3 "~" H 7850 4500 30  0000 C CNN
	1    7850 4500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57146637
P 7850 3800
F 0 "R?" V 7930 3800 40  0000 C CNN
F 1 "4,7k" V 7857 3801 40  0000 C CNN
F 2 "~" V 7780 3800 30  0000 C CNN
F 3 "~" H 7850 3800 30  0000 C CNN
	1    7850 3800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57146646
P 7550 4150
F 0 "C?" H 7550 4250 40  0000 L CNN
F 1 "4,7nF" H 7556 4065 40  0000 L CNN
F 2 "~" H 7588 4000 30  0000 C CNN
F 3 "~" H 7550 4150 60  0000 C CNN
	1    7550 4150
	0    -1   -1   0   
$EndComp
$Comp
L EMI_FILTER2 FI?
U 1 1 57146655
P 6950 1950
F 0 "FI?" H 6950 2050 50  0000 C CNN
F 1 "EMI_FILTER2" H 7000 1800 50  0000 L CNN
F 2 "~" H 6950 1950 60  0000 C CNN
F 3 "~" H 6950 1950 60  0000 C CNN
	1    6950 1950
	1    0    0    -1  
$EndComp
Text HLabel 1650 4450 0    60   Input ~ 0
BMSGND
Text HLabel 2850 3950 0    60   Input ~ 0
BMSCANTX
Text HLabel 2850 4150 0    60   Output ~ 0
BMSCANRX
Text HLabel 1650 3750 0    60   Input ~ 0
BMSVDD
Connection ~ 3300 4350
$Comp
L DIODESCH D?
U 1 1 5714666D
P 5900 2250
F 0 "D?" H 5900 2350 40  0000 C CNN
F 1 "DIODESCH" H 5900 2150 40  0000 C CNN
F 2 "~" H 5900 2250 60  0000 C CNN
F 3 "~" H 5900 2250 60  0000 C CNN
	1    5900 2250
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5714667A
P 3950 2250
F 0 "C?" H 3950 2350 40  0000 L CNN
F 1 "3uF" H 3956 2165 40  0000 L CNN
F 2 "~" H 3988 2100 30  0000 C CNN
F 3 "~" H 3950 2250 60  0000 C CNN
	1    3950 2250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57146680
P 1950 4100
F 0 "C?" H 1950 4200 40  0000 L CNN
F 1 "0.1uF" H 1956 4015 40  0000 L CNN
F 2 "~" H 1988 3950 30  0000 C CNN
F 3 "~" H 1950 4100 60  0000 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1950 8700 1950
Wire Wire Line
	3350 1950 4450 1950
Wire Wire Line
	3950 2050 3950 1950
Connection ~ 3950 1950
Wire Wire Line
	5900 2050 5900 1950
Connection ~ 5900 1950
Wire Wire Line
	3950 2450 3950 2600
Wire Wire Line
	5900 2450 5900 2600
Wire Wire Line
	6950 2200 6950 2600
Connection ~ 5900 2600
Connection ~ 3950 2600
Wire Wire Line
	5600 4050 4950 4050
Wire Wire Line
	5600 3450 5600 4050
Wire Wire Line
	5600 3900 5900 3900
Wire Wire Line
	5600 3450 8600 3450
Wire Wire Line
	7850 3450 7850 3550
Connection ~ 5600 3900
Connection ~ 7850 3450
$Comp
L NUP2105L U?
U 1 1 57146BCE
P 6500 4450
F 0 "U?" H 6275 4390 60  0000 C CNN
F 1 "NUP2105L" H 6450 4305 60  0000 C CNN
F 2 "~" H 6500 4450 60  0000 C CNN
F 3 "~" H 6500 4450 60  0000 C CNN
	1    6500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4350 5600 4350
Wire Wire Line
	5600 4150 5600 4850
Wire Wire Line
	5600 4150 4950 4150
Wire Wire Line
	5600 4850 8700 4850
Connection ~ 5600 4350
Wire Wire Line
	7850 4850 7850 4750
Connection ~ 7850 4850
Wire Wire Line
	7850 4250 7850 4050
Wire Wire Line
	7750 4150 7850 4150
Connection ~ 7850 4150
Wire Wire Line
	7200 4150 7350 4150
Wire Wire Line
	7250 4150 7250 4500
Wire Wire Line
	7250 4500 7650 4500
Connection ~ 7250 4150
Text Label 4450 2600 2    60   ~ 0
CANGND
Text Label 7650 4500 2    60   ~ 0
CANGND
Wire Wire Line
	4950 4450 5500 4450
Wire Wire Line
	5100 4450 5100 4350
Wire Wire Line
	5100 4350 4950 4350
Connection ~ 5100 4450
Text Label 5500 4450 2    60   ~ 0
CANGND
Wire Wire Line
	4950 3850 5500 3850
Text Label 5500 3850 2    60   ~ 0
CANGND
Text Label 4450 1950 2    60   ~ 0
CANVDD
Text Label 5500 3750 2    60   ~ 0
CANVDD
Wire Wire Line
	5500 3750 4950 3750
Text Label 5500 4250 2    60   ~ 0
CANVDD
Wire Wire Line
	5500 4250 4950 4250
$Comp
L C C?
U 1 1 57146E2B
P 8200 3800
F 0 "C?" H 8200 3900 40  0000 L CNN
F 1 "60nF" H 8206 3715 40  0000 L CNN
F 2 "~" H 8238 3650 30  0000 C CNN
F 3 "~" H 8200 3800 60  0000 C CNN
	1    8200 3800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57146E44
P 8200 4500
F 0 "C?" H 8200 4600 40  0000 L CNN
F 1 "60nF" H 8206 4415 40  0000 L CNN
F 2 "~" H 8238 4350 30  0000 C CNN
F 3 "~" H 8200 4500 60  0000 C CNN
	1    8200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4300 8200 4000
Wire Wire Line
	8200 3600 8200 3450
Connection ~ 8200 3450
Wire Wire Line
	8200 4700 8200 4850
Connection ~ 8200 4850
Wire Wire Line
	8200 4150 8650 4150
Connection ~ 8200 4150
Text Label 8650 4150 2    60   ~ 0
CANGND
Wire Wire Line
	3650 2050 3650 1950
Connection ~ 3650 1950
Connection ~ 3650 2600
Wire Wire Line
	1950 3900 1950 3750
Connection ~ 1950 3750
Wire Wire Line
	1950 4300 1950 4450
Connection ~ 1950 4450
$Comp
L CONN_4 P?
U 1 1 5714768F
P 9700 3100
F 0 "P?" V 9650 3100 50  0000 C CNN
F 1 "CONN_4" V 9750 3100 50  0000 C CNN
F 2 "" H 9700 3100 60  0000 C CNN
F 3 "" H 9700 3100 60  0000 C CNN
	1    9700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1950 8700 2950
Wire Wire Line
	8700 2950 9350 2950
Wire Wire Line
	8600 3450 8600 3050
Wire Wire Line
	8600 3050 9350 3050
Wire Wire Line
	8700 4850 8700 3150
Wire Wire Line
	8700 3150 9350 3150
Wire Wire Line
	9350 3250 8900 3250
Text Label 8900 3250 0    60   ~ 0
CANGND
Wire Wire Line
	5100 3950 5100 3850
Connection ~ 5100 3850
Wire Wire Line
	5100 3950 4950 3950
$Comp
L 7805 U?
U 1 1 57147A3D
P 2950 2000
F 0 "U?" H 3100 1804 60  0000 C CNN
F 1 "7805" H 2950 2200 60  0000 C CNN
F 2 "" H 2950 2000 60  0000 C CNN
F 3 "" H 2950 2000 60  0000 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57147A4A
P 2300 2250
F 0 "C?" H 2300 2350 40  0000 L CNN
F 1 "0.1uF60V" H 2306 2165 40  0000 L CNN
F 2 "~" H 2338 2100 30  0000 C CNN
F 3 "~" H 2300 2250 60  0000 C CNN
	1    2300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1950 2300 2050
Wire Wire Line
	2300 2450 2300 2600
Connection ~ 2300 1950
Text Label 5650 2600 2    60   ~ 0
CANGND
Text Label 8700 1950 2    60   ~ 0
CANUNFILTERED12V
Text Label 2000 1950 2    60   ~ 0
CAN12V
Wire Wire Line
	2000 1950 2550 1950
Wire Wire Line
	2950 2250 2950 2600
Wire Wire Line
	2300 2600 4450 2600
Connection ~ 2950 2600
$Comp
L DIODE D?
U 1 1 57147D86
P 6250 1950
F 0 "D?" H 6250 2050 40  0000 C CNN
F 1 "DIODE" H 6250 1850 40  0000 C CNN
F 2 "~" H 6250 1950 60  0000 C CNN
F 3 "~" H 6250 1950 60  0000 C CNN
	1    6250 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 1950 6050 1950
Wire Wire Line
	6450 1950 6600 1950
Wire Wire Line
	6950 2600 5650 2600
Text Label 5600 3450 0    60   ~ 0
CANH
Text Label 5600 4850 0    60   ~ 0
CANL
Text Label 5650 1950 2    60   ~ 0
CAN12V
$Comp
L C C?
U 1 1 57146FEB
P 3650 2250
F 0 "C?" H 3650 2350 40  0000 L CNN
F 1 "0.1uF" H 3656 2165 40  0000 L CNN
F 2 "~" H 3688 2100 30  0000 C CNN
F 3 "~" H 3650 2250 60  0000 C CNN
	1    3650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2450 3650 2600
$EndSCHEMATC
