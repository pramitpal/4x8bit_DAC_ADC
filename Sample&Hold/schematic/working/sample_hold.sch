v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -70 -70 -0 {
lab=#net1}
N 120 70 120 100 {
lab=#net2}
N 80 40 80 130 {
lab=CLKN}
N -70 160 120 160 {
lab=#net3}
N -70 150 -70 160 {
lab=#net3}
N -70 160 -70 210 {
lab=#net3}
N 120 160 290 160 {
lab=#net3}
N 120 100 290 100 {
lab=#net2}
N -70 -50 260 -50 {
lab=#net1}
N 290 -10 290 100 {
lab=#net2}
N 290 160 380 160 {
lab=#net3}
N 320 -50 410 -50 {
lab=#net4}
N 410 -50 410 120 {
lab=#net4}
N -30 -100 410 -100 {
lab=#net4}
N 410 -100 410 -50 {
lab=#net4}
N 500 -50 530 -50 {
lab=#net5}
N 410 -50 440 -50 {
lab=#net4}
N -70 -130 470 -130 {
lab=VCC}
N 470 -130 470 -90 {
lab=VCC}
N 330 130 360 130 {
lab=#net4}
N 360 110 360 130 {
lab=#net4}
N 360 110 410 110 {
lab=#net4}
N 440 160 510 160 {
lab=VIN}
N 410 120 540 120 {
lab=#net4}
N 590 -50 590 -30 {
lab=VSS}
N 170 -150 170 -130 {
lab=VCC}
N 540 120 540 170 {
lab=#net4}
N 510 160 510 210 {
lab=VIN}
N 570 210 640 210 {
lab=VOUT}
N 570 210 570 360 {
lab=VOUT}
N 510 210 510 360 {
lab=VIN}
N 200 300 200 330 {
lab=#net6}
N 240 270 240 360 {
lab=#net4}
N 360 130 360 270 {
lab=#net4}
N 240 270 360 270 {
lab=#net4}
N 540 400 540 450 {
lab=#net6}
N 130 450 540 450 {
lab=#net6}
N 130 310 130 450 {
lab=#net6}
N 130 310 200 310 {
lab=#net6}
N -70 120 -70 150 {
lab=#net3}
N 640 210 640 250 {
lab=VOUT}
N -70 60 -70 120 {
lab=#net3}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -50 -100 0 1 {name=M5
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -90 240 0 0 {name=M6
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 100 130 0 0 {name=Ma
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 100 40 0 0 {name=Mb
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 310 130 0 1 {name=Mc
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 290 -30 3 0 {name=M2
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 140 1 0 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 470 -70 3 1 {name=M8
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 560 -70 3 1 {name=M4
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 810 210 0 0 {name=p2 lab=VCC}
C {devices/ipin.sym} 830 300 0 0 {name=p3 lab=VIN}
C {devices/opin.sym} 810 270 0 0 {name=p4 lab=VOUT}
C {devices/lab_pin.sym} -70 270 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -30 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -150 1 0 {name=p7 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 120 10 1 0 {name=p10 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 120 40 2 0 {name=p11 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 120 130 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 130 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -70 240 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 160 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 540 210 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -50 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -50 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -110 240 0 0 {name=p20 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 560 -90 1 0 {name=p21 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 80 80 0 0 {name=p22 sig_type=std_logic lab=CLKN}
C {devices/lab_pin.sym} 510 210 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/ipin.sym} 830 330 0 0 {name=p24 lab=CLK}
C {devices/ipin.sym} 830 360 0 0 {name=p25 lab=CLKN}
C {devices/iopin.sym} 810 240 0 0 {name=p26 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 540 190 1 0 {name=M1
L=0.5
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -70 -100 2 1 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 290 -50 1 0 {name=p9 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 380 3 0 {name=M7
L=0.5
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 540 360 1 0 {name=p17 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 360 0 1 {name=Ma1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 220 270 0 1 {name=Mb2
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 200 240 1 0 {name=p28 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 200 390 3 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 360 2 1 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 270 0 0 {name=p31 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 640 210 0 1 {name=p27 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/cap_mim_m3_1.sym} 640 280 0 0 {name=C1 model=cap_mim_m3_1 W=22 L=24 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 640 310 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} -70 30 0 0 {name=C2 model=cap_mim_m3_1 W=18 L=24 MF=1 spiceprefix=X}
