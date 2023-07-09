v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 30 -110 50 {
lab=VINP}
N 270 30 270 50 {
lab=VINN}
N 650 30 650 50 {
lab=VINP}
N 1030 30 1030 50 {
lab=VINN}
N 230 50 250 50 {
lab=#net1}
N 250 10 250 50 {
lab=#net1}
N 250 10 270 10 {
lab=#net1}
N 190 50 230 50 {
lab=#net1}
N 570 50 620 50 {
lab=#net2}
N 620 10 620 50 {
lab=#net2}
N 620 10 650 10 {
lab=#net2}
N -110 50 -110 70 {
lab=VINP}
N 270 50 270 70 {
lab=VINN}
N 650 50 650 80 {
lab=VINP}
N 1030 50 1030 80 {
lab=VINN}
N 950 50 1000 50 {
lab=#net3}
N 1000 10 1000 50 {
lab=#net3}
N 1000 10 1030 10 {
lab=#net3}
N 220 230 270 230 {
lab=#net4}
N 220 190 220 230 {
lab=#net4}
N 190 190 220 190 {
lab=#net4}
N 190 210 190 230 {
lab=VINP}
N 570 210 570 230 {
lab=VINN}
N 600 230 650 230 {
lab=#net5}
N 600 190 600 230 {
lab=#net5}
N 570 190 600 190 {
lab=#net5}
N 950 210 950 230 {
lab=VINP}
N 980 230 1030 230 {
lab=#net6}
N 980 190 980 230 {
lab=#net6}
N 950 190 980 190 {
lab=#net6}
N 1330 210 1330 230 {
lab=VINN}
N 1390 160 1390 190 {
lab=#net7}
N 1330 190 1390 190 {
lab=#net7}
N 1690 50 1690 120 {
lab=OUT}
N 1330 50 1690 50 {
lab=OUT}
N -190 50 -150 50 {
lab=#net8}
N -150 10 -150 50 {
lab=#net8}
N -150 10 -110 10 {
lab=#net8}
N -490 230 -110 230 {
lab=#net9}
N -490 30 -490 230 {
lab=#net9}
N 1690 50 1700 50 {
lab=OUT}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/delay_cell.sym} 40 30 0 0 {name=x1}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/delay_cell.sym} 420 30 0 0 {name=x2}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/delay_cell.sym} 800 30 0 0 {name=x3}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/delay_cell.sym} 1180 30 0 0 {name=x4}
C {devices/lab_pin.sym} 190 10 0 1 {name=p7 lab=VCC}
C {devices/lab_pin.sym} 190 30 0 1 {name=p1 lab=VSS}
C {devices/lab_pin.sym} 570 10 0 1 {name=p2 lab=VCC}
C {devices/lab_pin.sym} 570 30 0 1 {name=p3 lab=VSS}
C {devices/lab_pin.sym} -110 70 1 1 {name=p4 lab=VINP}
C {devices/lab_pin.sym} 270 70 1 1 {name=p5 lab=VINN}
C {devices/lab_pin.sym} 650 80 1 1 {name=p6 lab=VINP}
C {devices/lab_pin.sym} 1030 80 1 1 {name=p8 lab=VINN}
C {devices/lab_pin.sym} 950 10 0 1 {name=p9 lab=VCC}
C {devices/lab_pin.sym} 950 30 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} 1330 10 0 1 {name=p11 lab=VCC}
C {devices/lab_pin.sym} 1330 30 0 1 {name=p12 lab=VSS}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/delay_cell.sym} 40 210 0 1 {name=x5}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/delay_cell.sym} 420 210 0 1 {name=x6}
C {devices/lab_pin.sym} -110 190 0 0 {name=p13 lab=VCC}
C {devices/lab_pin.sym} -110 210 0 0 {name=p14 lab=VSS}
C {devices/lab_pin.sym} 270 190 0 0 {name=p15 lab=VCC}
C {devices/lab_pin.sym} 270 210 0 0 {name=p16 lab=VSS}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/delay_cell.sym} 800 210 0 1 {name=x7}
C {devices/lab_pin.sym} 650 190 0 0 {name=p17 lab=VCC}
C {devices/lab_pin.sym} 650 210 0 0 {name=p18 lab=VSS}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/delay_cell.sym} 1180 210 0 1 {name=x8}
C {devices/lab_pin.sym} 1030 190 0 0 {name=p19 lab=VCC}
C {devices/lab_pin.sym} 1030 210 0 0 {name=p20 lab=VSS}
C {devices/lab_pin.sym} 190 230 1 1 {name=p21 lab=VINP}
C {devices/lab_pin.sym} 570 230 1 1 {name=p22 lab=VINN}
C {devices/lab_pin.sym} 950 230 1 1 {name=p23 lab=VINP}
C {devices/lab_pin.sym} 1330 230 1 1 {name=p24 lab=VINN}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/nand.sym} 1540 140 0 1 {name=x9}
C {devices/lab_pin.sym} 1390 120 0 0 {name=p25 lab=VCC}
C {devices/lab_pin.sym} 1390 140 0 0 {name=p26 lab=VSS}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/nand.sym} -340 30 0 0 {name=x10}
C {devices/lab_pin.sym} -190 10 0 1 {name=p27 lab=VCC}
C {devices/lab_pin.sym} -190 30 0 1 {name=p28 lab=VSS}
C {devices/lab_pin.sym} -490 10 2 1 {name=p29 lab=START}
C {devices/lab_pin.sym} 1690 140 2 0 {name=p30 lab=START}
C {devices/lab_pin.sym} 1700 50 2 0 {name=p31 lab=OUT}
C {devices/iopin.sym} 1580 -110 0 0 {name=p32 lab=VCC}
C {devices/opin.sym} 1580 -10 0 0 {name=p33 lab=OUT}
C {devices/ipin.sym} 1600 -50 0 0 {name=p34 lab=VINN}
C {devices/iopin.sym} 1580 -90 0 0 {name=p36 lab=VSS}
C {devices/ipin.sym} 1600 -70 0 0 {name=p35 lab=VINP}
C {devices/ipin.sym} 1600 -30 0 0 {name=p37 lab=START}
