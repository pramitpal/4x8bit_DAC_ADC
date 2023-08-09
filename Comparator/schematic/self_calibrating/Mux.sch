v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 10 20 180 {
lab=OUT}
N -40 10 -40 180 {
lab=A}
N 20 340 20 510 {
lab=OUT}
N -40 340 -40 510 {
lab=B}
N -10 220 -10 300 {
lab=SEL_N}
N -190 260 -190 300 {
lab=SEL_N}
N -230 230 -230 330 {
lab=SEL}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -10 -10 1 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -10 200 3 0 {name=M2
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
C {devices/lab_pin.sym} -10 180 1 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -10 10 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -10 320 1 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -10 530 3 0 {name=M4
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
C {devices/lab_pin.sym} -10 510 1 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -10 340 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 -30 1 0 {name=p5 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} -10 550 3 0 {name=p6 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} -10 270 0 0 {name=p7 sig_type=std_logic lab=SEL_N}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -210 230 0 0 {name=M5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -210 330 0 0 {name=M6
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
C {devices/lab_pin.sym} -190 360 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -190 200 1 0 {name=p9 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -190 230 2 0 {name=p10 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -190 330 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -190 280 2 0 {name=p12 sig_type=std_logic lab=SEL_N}
C {devices/lab_pin.sym} -230 280 0 0 {name=p13 sig_type=std_logic lab=SEL}
C {devices/iopin.sym} 170 300 0 0 {name=p14 lab=VCC}
C {devices/ipin.sym} 190 340 0 0 {name=p15 lab=SEL}
C {devices/opin.sym} 170 360 0 0 {name=p16 lab=OUT}
C {devices/lab_pin.sym} 20 180 2 0 {name=p17 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 20 340 2 0 {name=p18 sig_type=std_logic lab=OUT}
C {devices/iopin.sym} 170 320 0 0 {name=p19 lab=VSS}
C {devices/ipin.sym} 190 380 0 0 {name=p20 lab=A}
C {devices/lab_pin.sym} -40 90 0 0 {name=p23 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -40 360 0 0 {name=p22 sig_type=std_logic lab=B}
C {devices/ipin.sym} 190 410 0 0 {name=p21 lab=B}
