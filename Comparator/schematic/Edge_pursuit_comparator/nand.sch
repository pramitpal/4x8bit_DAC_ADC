v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 60 50 80 {
lab=#net1}
N -20 -50 110 -50 {
lab=#net2}
N 50 -50 50 -0 {
lab=#net2}
N -60 -80 -60 30 {
lab=A}
N -60 30 10 30 {
lab=A}
N -0 -80 70 -80 {
lab=B}
N -0 -80 -0 110 {
lab=B}
N -0 110 10 110 {
lab=B}
N -20 110 -0 110 {
lab=B}
N -70 10 -60 10 {
lab=A}
N -20 -110 110 -110 {
lab=VCC}
N 50 -10 80 -10 {}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 90 -80 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 30 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 110 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -40 -80 0 0 {name=M4
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
C {devices/lab_pin.sym} 30 -110 3 1 {name=p3 lab=VCC}
C {devices/lab_pin.sym} 50 140 1 1 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 50 30 0 1 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 50 110 0 1 {name=p8 lab=VSS}
C {devices/lab_pin.sym} 80 -10 0 1 {name=p11 lab=OUT}
C {devices/lab_pin.sym} -70 10 0 0 {name=p12 lab=A}
C {devices/lab_pin.sym} -20 110 0 0 {name=p14 lab=B}
C {devices/iopin.sym} 240 -30 0 0 {name=p1 lab=VCC}
C {devices/opin.sym} 240 70 0 0 {name=p32 lab=OUT}
C {devices/ipin.sym} 260 30 0 0 {name=p34 lab=B}
C {devices/iopin.sym} 240 -10 0 0 {name=p36 lab=VSS}
C {devices/ipin.sym} 260 10 0 0 {name=p6 lab=A}
C {devices/lab_pin.sym} -20 -80 0 1 {name=p2 lab=VCC}
C {devices/lab_pin.sym} 110 -80 0 1 {name=p7 lab=VCC}
