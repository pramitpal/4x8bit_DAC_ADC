v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 500 100 520 100 {}
L 4 500 140 520 140 {}
L 7 500 80 520 80 {}
L 7 500 120 520 120 {}
B 5 517.5 77.5 522.5 82.5 {name=VCC dir=inout }
B 5 217.5 77.5 222.5 82.5 {name=DX dir=in }
B 5 517.5 97.5 522.5 102.5 {name=DX_BUF dir=out }
B 5 517.5 117.5 522.5 122.5 {name=VSS dir=inout }
B 5 217.5 97.5 222.5 102.5 {name=VREFH dir=in }
B 5 517.5 137.5 522.5 142.5 {name=VOUT dir=out }
B 5 217.5 117.5 222.5 122.5 {name=VREFL dir=in }
T {@name} 505 58 0 0 0.2 0.2 {}
C {devices/ipin.sym} 220 80 0 0 {name=p4 lab=D2}
C {devices/opin.sym} -20 30 0 0 {name=p6 lab=D0_BUF}
C {devices/opin.sym} 520 100 0 0 {name=p7 lab=D2_BUF}
C {devices/opin.sym} 520 140 0 0 {name=p8 lab=VOUT}
C {devices/ipin.sym} -320 30 0 0 {name=p10 lab=VREFH}
C {devices/lab_pin.sym} -20 -10 0 1 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -20 10 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -80 0 1 {name=p3 sig_type=std_logic lab=VCC}
C {devices/iopin.sym} 380 -80 2 0 {name=p13 lab=VCC}
C {devices/lab_pin.sym} 380 -50 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 380 -50 2 0 {name=p15 lab=VSS}
C {devices/lab_pin.sym} 520 80 0 1 {name=p11 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 520 120 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -20 70 0 1 {name=p17 sig_type=std_logic lab=VINH}
C {devices/lab_pin.sym} 220 100 0 0 {name=p18 sig_type=std_logic lab=VINH}
C {devices/lab_pin.sym} 220 120 0 0 {name=p19 sig_type=std_logic lab=VINL}
C {devices/opin.sym} -20 50 0 0 {name=p16 lab=D1_BUF}
C {devices/ipin.sym} -320 170 0 0 {name=p21 lab=D1}
C {devices/ipin.sym} -320 210 0 0 {name=p23 lab=VREFL}
C {devices/lab_pin.sym} -20 150 0 1 {name=p25 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -20 170 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -20 230 0 1 {name=p27 sig_type=std_logic lab=VINL}
C {devices/ipin.sym} -320 150 0 0 {name=p28 lab=D0}
C {devices/lab_pin.sym} -20 190 0 1 {name=p5 sig_type=std_logic lab=BUF0}
C {devices/lab_pin.sym} -20 210 0 1 {name=p20 sig_type=std_logic lab=BUF1}
C {devices/lab_pin.sym} -320 -10 0 0 {name=p22 sig_type=std_logic lab=BUF0}
C {devices/lab_pin.sym} -320 10 0 0 {name=p29 sig_type=std_logic lab=BUF1}
C {devices/lab_pin.sym} -320 50 0 0 {name=p9 sig_type=std_logic lab=VINT}
C {devices/lab_pin.sym} -320 190 0 0 {name=p24 sig_type=std_logic lab=VINT}
C {switch_n_3v3.sym} 370 110 0 0 {name=x2}
C {2_bit_dac.sym} -170 30 0 0 {name=X1}
C {2_bit_dac.sym} -170 190 0 0 {name=X3}
