EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:switch-cache
EELAYER 25 0
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
L mosfet_p M6
U 1 1 644B9D83
P 5350 3000
F 0 "M6" H 5300 3050 50  0000 R CNN
F 1 "mosfet_p" H 5400 3150 50  0000 R CNN
F 2 "" H 5600 3100 29  0000 C CNN
F 3 "" H 5400 3000 60  0000 C CNN
	1    5350 3000
	1    0    0    1   
$EndComp
$Comp
L mosfet_n M5
U 1 1 644B9D84
P 5300 3450
F 0 "M5" H 5300 3300 50  0000 R CNN
F 1 "mosfet_n" H 5400 3400 50  0000 R CNN
F 2 "" H 5600 3150 29  0000 C CNN
F 3 "" H 5400 3250 60  0000 C CNN
	1    5300 3450
	1    0    0    -1  
$EndComp
Entry Wire Line
	5300 3450 5400 3550
$Comp
L GND #PWR01
U 1 1 644B9D85
P 5500 4100
F 0 "#PWR01" H 5500 3850 50  0001 C CNN
F 1 "GND" H 5500 3950 50  0000 C CNN
F 2 "" H 5500 4100 50  0001 C CNN
F 3 "" H 5500 4100 50  0001 C CNN
	1    5500 4100
	1    0    0    -1  
$EndComp
$Comp
L mosfet_p M2
U 1 1 644B9D86
P 3800 3000
F 0 "M2" H 3750 3050 50  0000 R CNN
F 1 "mosfet_p" H 3850 3150 50  0000 R CNN
F 2 "" H 4050 3100 29  0000 C CNN
F 3 "" H 3850 3000 60  0000 C CNN
	1    3800 3000
	1    0    0    1   
$EndComp
$Comp
L mosfet_n M1
U 1 1 644B9D87
P 3750 3450
F 0 "M1" H 3750 3300 50  0000 R CNN
F 1 "mosfet_n" H 3850 3400 50  0000 R CNN
F 2 "" H 4050 3150 29  0000 C CNN
F 3 "" H 3850 3250 60  0000 C CNN
	1    3750 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 644B9D88
P 3950 4100
F 0 "#PWR02" H 3950 3850 50  0001 C CNN
F 1 "GND" H 3950 3950 50  0000 C CNN
F 2 "" H 3950 4100 50  0001 C CNN
F 3 "" H 3950 4100 50  0001 C CNN
	1    3950 4100
	1    0    0    -1  
$EndComp
$Comp
L mosfet_n M3
U 1 1 644B9D89
P 5050 5450
F 0 "M3" H 5050 5300 50  0000 R CNN
F 1 "mosfet_n" H 5150 5400 50  0000 R CNN
F 2 "" H 5350 5150 29  0000 C CNN
F 3 "" H 5150 5250 60  0000 C CNN
	1    5050 5450
	1    0    0    -1  
$EndComp
$Comp
L mosfet_p M4
U 1 1 644B9D8A
P 5100 4850
F 0 "M4" H 5050 4900 50  0000 R CNN
F 1 "mosfet_p" H 5150 5000 50  0000 R CNN
F 2 "" H 5350 4950 29  0000 C CNN
F 3 "" H 5150 4850 60  0000 C CNN
	1    5100 4850
	1    0    0    1   
$EndComp
$Comp
L mosfet_n M8
U 1 1 644B9D8B
P 6500 4650
F 0 "M8" H 6500 4500 50  0000 R CNN
F 1 "mosfet_n" H 6600 4600 50  0000 R CNN
F 2 "" H 6800 4350 29  0000 C CNN
F 3 "" H 6600 4450 60  0000 C CNN
	1    6500 4650
	-1   0    0    -1  
$EndComp
$Comp
L mosfet_p M7
U 1 1 644B9D8C
P 6450 5600
F 0 "M7" H 6400 5650 50  0000 R CNN
F 1 "mosfet_p" H 6500 5750 50  0000 R CNN
F 2 "" H 6700 5700 29  0000 C CNN
F 3 "" H 6500 5600 60  0000 C CNN
	1    6450 5600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 644B9D8D
P 5350 5800
F 0 "#PWR03" H 5350 5550 50  0001 C CNN
F 1 "GND" H 5350 5650 50  0000 C CNN
F 2 "" H 5350 5800 50  0001 C CNN
F 3 "" H 5350 5800 50  0001 C CNN
	1    5350 5800
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 1 1 644B9D8E
P 4800 2200
F 0 "U1" H 4850 2300 30  0000 C CNN
F 1 "PORT" H 4800 2200 30  0000 C CNN
F 2 "" H 4800 2200 60  0000 C CNN
F 3 "" H 4800 2200 60  0000 C CNN
	1    4800 2200
	0    1    1    0   
$EndComp
$Comp
L PORT U1
U 4 1 644B9D8F
P 2650 3300
F 0 "U1" H 2700 3400 30  0000 C CNN
F 1 "PORT" H 2650 3300 30  0000 C CNN
F 2 "" H 2650 3300 60  0000 C CNN
F 3 "" H 2650 3300 60  0000 C CNN
	4    2650 3300
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 2 1 644B9D90
P 5800 4200
F 0 "U1" H 5850 4300 30  0000 C CNN
F 1 "PORT" H 5800 4200 30  0000 C CNN
F 2 "" H 5800 4200 60  0000 C CNN
F 3 "" H 5800 4200 60  0000 C CNN
	2    5800 4200
	0    1    1    0   
$EndComp
$Comp
L PORT U1
U 3 1 644B9D91
P 5800 6400
F 0 "U1" H 5850 6500 30  0000 C CNN
F 1 "PORT" H 5800 6400 30  0000 C CNN
F 2 "" H 5800 6400 60  0000 C CNN
F 3 "" H 5800 6400 60  0000 C CNN
	3    5800 6400
	0    -1   -1   0   
$EndComp
$Comp
L PORT U1
U 5 1 644B9D92
P 5800 5600
F 0 "U1" H 5850 5700 30  0000 C CNN
F 1 "PORT" H 5800 5600 30  0000 C CNN
F 2 "" H 5800 5600 60  0000 C CNN
F 3 "" H 5800 5600 60  0000 C CNN
	5    5800 5600
	0    -1   -1   0   
$EndComp
Connection ~ 4350 3350
Wire Wire Line
	4350 5250 4350 3350
Connection ~ 5000 3350
Wire Wire Line
	3950 3350 5000 3350
Connection ~ 5800 5250
Wire Wire Line
	5800 5350 5800 5250
Connection ~ 5800 6050
Wire Wire Line
	5800 6150 5800 6050
Connection ~ 5800 4500
Wire Wire Line
	5800 4450 5800 4500
Connection ~ 3450 3300
Wire Wire Line
	2900 3300 3450 3300
Connection ~ 4800 2550
Wire Wire Line
	4800 2450 4800 2550
Connection ~ 4000 2650
Connection ~ 5550 2650
Wire Wire Line
	5550 2550 5550 2650
Wire Wire Line
	4000 2550 5550 2550
Wire Wire Line
	4000 2650 4000 2550
Connection ~ 5250 5250
Connection ~ 6300 5250
Wire Wire Line
	5250 5250 6300 5250
Wire Wire Line
	5250 5050 5250 5450
Wire Wire Line
	6300 6050 6300 5800
Wire Wire Line
	5250 6050 6300 6050
Wire Wire Line
	5250 5850 5250 6050
Wire Wire Line
	6300 4500 6300 4650
Wire Wire Line
	5250 4500 6300 4500
Wire Wire Line
	5250 4650 5250 4500
Connection ~ 5500 3300
Connection ~ 6950 5250
Wire Wire Line
	7550 5250 6950 5250
Wire Wire Line
	7550 3300 7550 5250
Wire Wire Line
	5500 3300 7550 3300
Connection ~ 4500 5250
Wire Wire Line
	4350 5250 4500 5250
Wire Wire Line
	6950 5600 6600 5600
Wire Wire Line
	6950 4850 6950 5600
Wire Wire Line
	6600 4850 6950 4850
Wire Wire Line
	6300 5050 6300 5400
Wire Wire Line
	4500 5650 4950 5650
Wire Wire Line
	4500 4850 4500 5650
Wire Wire Line
	4950 4850 4500 4850
Connection ~ 3950 3350
Connection ~ 3950 4000
Wire Wire Line
	3950 2650 3950 2800
Wire Wire Line
	4050 2650 3950 2650
Wire Wire Line
	4050 2850 4050 2650
Wire Wire Line
	3450 3650 3650 3650
Wire Wire Line
	3450 3000 3450 3650
Wire Wire Line
	3650 3000 3450 3000
Wire Wire Line
	4050 4000 4050 3800
Wire Wire Line
	3950 4000 4050 4000
Wire Wire Line
	3950 3850 3950 4100
Wire Wire Line
	3950 3200 3950 3450
Connection ~ 5500 4000
Wire Wire Line
	5500 2650 5500 2800
Wire Wire Line
	5600 2650 5500 2650
Wire Wire Line
	5600 2850 5600 2650
Wire Wire Line
	5000 3650 5200 3650
Wire Wire Line
	5000 3000 5000 3650
Wire Wire Line
	5200 3000 5000 3000
Wire Wire Line
	5600 4000 5600 3800
Wire Wire Line
	5500 4000 5600 4000
Wire Wire Line
	5500 3850 5500 4100
Wire Wire Line
	5500 3200 5500 3450
Text Label 4850 2550 0    60   ~ 0
vdd
Text Label 5700 5250 0    60   ~ 0
Vout
Text Label 5850 4500 0    60   ~ 0
vrefh
Text Label 5850 6050 0    60   ~ 0
vrefl
Text Label 5350 4700 0    60   ~ 0
vdd
Text Label 6200 5450 0    60   ~ 0
vdd
$Comp
L GND #PWR04
U 1 1 644B9D93
P 6200 5100
F 0 "#PWR04" H 6200 4850 50  0001 C CNN
F 1 "GND" H 6200 4950 50  0000 C CNN
F 2 "" H 6200 5100 50  0001 C CNN
F 3 "" H 6200 5100 50  0001 C CNN
	1    6200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5100 6200 5000
$Comp
L PWR_FLAG #FLG05
U 1 1 644B9D94
P 6050 5000
F 0 "#FLG05" H 6050 5075 50  0001 C CNN
F 1 "PWR_FLAG" H 6050 5150 50  0000 C CNN
F 2 "" H 6050 5000 50  0001 C CNN
F 3 "" H 6050 5000 50  0001 C CNN
	1    6050 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 5000 6050 5000
Connection ~ 6200 5000
Text Label 2900 3300 0    60   ~ 0
Dx
$Comp
L PORT U1
U 6 1 644B9D95
P 7900 4150
F 0 "U1" H 7950 4250 30  0000 C CNN
F 1 "PORT" H 7900 4150 30  0000 C CNN
F 2 "" H 7900 4150 60  0000 C CNN
F 3 "" H 7900 4150 60  0000 C CNN
	6    7900 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 4150 7550 4150
Connection ~ 7550 4150
Text Label 7100 3300 0    60   ~ 0
Dx_buf
$EndSCHEMATC
