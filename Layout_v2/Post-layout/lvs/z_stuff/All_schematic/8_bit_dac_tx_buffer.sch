v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -60 -110 -60 {
lab=#net1}
N -180 -40 -110 -40 {
lab=#net2}
N -180 -20 -110 -20 {
lab=#net3}
N -180 0 -110 0 {
lab=#net4}
N -180 20 -110 20 {
lab=#net5}
N -180 40 -110 40 {
lab=#net6}
N -180 60 -110 60 {
lab=#net7}
N -180 80 -110 80 {
lab=#net8}
N 190 120 230 120 {
lab=VOUT}
N -200 -60 -180 -60 {
lab=#net1}
N -200 -40 -180 -40 {
lab=#net2}
N -200 -20 -180 -20 {
lab=#net3}
N -200 -0 -180 -0 {
lab=#net4}
N -200 20 -180 20 {
lab=#net5}
N -200 40 -180 40 {
lab=#net6}
N -200 60 -180 60 {
lab=#net7}
N -200 80 -180 80 {
lab=#net8}
N -110 -110 -110 -80 {
lab=VREFH}
N 230 90 240 90 {
lab=VOUT}
N 230 90 230 120 {
lab=VOUT}
C {8_bit_dac.sym} 40 20 0 0 {name=x1}
C {opamp.sym} 380 140 0 0 {name=x2}
C {devices/iopin.sym} -200 -80 0 0 {name=p4 lab=VSSD}
C {devices/iopin.sym} -200 -100 0 0 {name=p5 lab=VCCD}
C {devices/iopin.sym} 440 -30 0 0 {name=p6 lab=VDDA}
C {devices/iopin.sym} 440 -10 0 0 {name=p8 lab=VSSA}
C {devices/opin.sym} 530 160 0 0 {name=p12 lab=VOUT_BUF}
C {devices/ipin.sym} -500 -120 0 0 {name=p13 lab=D0}
C {devices/ipin.sym} -500 -100 0 0 {name=p14 lab=D1}
C {devices/ipin.sym} -500 -80 0 0 {name=p15 lab=D2}
C {devices/ipin.sym} -500 -60 0 0 {name=p16 lab=D3}
C {devices/ipin.sym} -500 -40 0 0 {name=p17 lab=D4}
C {devices/ipin.sym} -500 -20 0 0 {name=p18 lab=D5}
C {devices/ipin.sym} -500 0 0 0 {name=p19 lab=D6}
C {devices/ipin.sym} -500 20 0 0 {name=p20 lab=D7}
C {devices/lab_pin.sym} -200 -120 0 1 {name=p1 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} -110 100 0 0 {name=p3 sig_type=std_logic lab=VSSA}
C {devices/lab_pin.sym} 530 120 0 1 {name=p7 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 530 140 0 1 {name=p9 sig_type=std_logic lab=VSSA}
C {devices/lab_pin.sym} 190 -80 0 1 {name=p10 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 190 -60 0 1 {name=p11 sig_type=std_logic lab=VSSA}
C {devices/ipin.sym} -110 -110 0 1 {name=p21 lab=VREFH}
C {devices/opin.sym} 240 90 0 0 {name=p2 lab=VOUT}
C {level_tx_8bit.sym} -350 -20 0 0 {name=x3}
