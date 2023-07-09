v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -120 220 -110 {
lab=#net1}
N 220 -50 220 -30 {
lab=OUT}
N 220 30 220 50 {
lab=#net2}
N 180 -80 180 0 {
lab=IN}
N 220 -40 250 -40 {
lab=OUT}
N 150 -40 180 -40 {
lab=IN}
N 150 -150 180 -150 {
lab=VINP}
N 150 80 180 80 {
lab=VINN}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 200 -80 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 0 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 80 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 200 -150 0 0 {name=M4
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
C {devices/lab_pin.sym} 220 -180 3 1 {name=p3 lab=VCC}
C {devices/lab_pin.sym} 220 110 1 1 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 220 0 0 1 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 220 80 0 1 {name=p8 lab=VSS}
C {devices/lab_pin.sym} 220 -150 0 1 {name=p9 lab=VCC}
C {devices/lab_pin.sym} 220 -80 0 1 {name=p10 lab=VCC}
C {devices/lab_pin.sym} 250 -40 0 1 {name=p11 lab=OUT}
C {devices/lab_pin.sym} 150 -40 0 0 {name=p12 lab=IN}
C {devices/lab_pin.sym} 150 -150 0 0 {name=p13 lab=VINP}
C {devices/lab_pin.sym} 150 80 0 0 {name=p14 lab=VINN}
C {devices/iopin.sym} 380 -190 0 0 {name=p1 lab=VCC}
C {devices/opin.sym} 380 -90 0 0 {name=p32 lab=OUT}
C {devices/ipin.sym} 400 -130 0 0 {name=p34 lab=VINP}
C {devices/ipin.sym} 400 -110 0 0 {name=p35 lab=VINN}
C {devices/iopin.sym} 380 -170 0 0 {name=p36 lab=VSS}
C {devices/ipin.sym} 400 -150 0 0 {name=p6 lab=IN}
