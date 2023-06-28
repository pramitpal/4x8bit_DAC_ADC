v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 10 20 30 {
lab=#net1}
N 20 -20 30 -20 {
lab=VCCL}
N 30 -50 30 -20 {
lab=VCCL}
N 20 -50 30 -50 {
lab=VCCL}
N 20 60 30 60 {
lab=VSS}
N 30 60 30 90 {
lab=VSS}
N 20 90 30 90 {
lab=VSS}
N -20 -20 -20 60 {
lab=VIN}
N 270 10 270 30 {
lab=#net2}
N 270 -20 280 -20 {
lab=VCCL}
N 280 -50 280 -20 {
lab=VCCL}
N 270 -50 280 -50 {
lab=VCCL}
N 270 60 280 60 {
lab=VSS}
N 280 60 280 90 {
lab=VSS}
N 270 90 280 90 {
lab=VSS}
N 230 -20 230 60 {
lab=#net1}
N 20 20 90 20 {
lab=#net1}
N 130 20 150 20 {
lab=VSS}
N 150 20 150 50 {
lab=VSS}
N 130 50 150 50 {
lab=VSS}
N 130 50 130 90 {
lab=VSS}
N 30 90 130 90 {
lab=VSS}
N 130 90 270 90 {
lab=VSS}
N 270 90 380 90 {
lab=VSS}
N 380 50 380 90 {
lab=VSS}
N 90 20 90 70 {
lab=#net1}
N 90 70 230 70 {
lab=#net1}
N 230 60 230 70 {
lab=#net1}
N 270 20 340 20 {
lab=#net2}
N 130 -170 130 -10 {
lab=VOUT}
N 380 -170 380 -10 {
lab=#net3}
N 280 -200 340 -200 {
lab=VOUT}
N 220 -160 280 -200 {
lab=VOUT}
N 130 -160 220 -160 {
lab=VOUT}
N 170 -200 220 -200 {
lab=#net3}
N 220 -200 280 -160 {
lab=#net3}
N 130 -230 380 -230 {
lab=VCC}
N 280 -160 380 -160 {
lab=#net3}
N 380 -200 390 -200 {
lab=VCC}
N 390 -230 390 -200 {
lab=VCC}
N 380 -230 390 -230 {
lab=VCC}
N 120 -200 130 -200 {
lab=VCC}
N 120 -230 120 -200 {
lab=VCC}
N 120 -230 130 -230 {
lab=VCC}
N 30 -50 270 -50 {
lab=VCCL}
N -50 20 -20 20 {
lab=VIN}
N 180 -260 180 -230 {
lab=VCC}
N 380 20 390 20 {
lab=VSS}
N 390 20 390 50 {
lab=VSS}
N 380 50 390 50 {
lab=VSS}
N 70 -70 70 -50 {
lab=VCCL}
N 230 90 230 110 {
lab=VSS}
N 130 -110 160 -110 {
lab=VOUT}
C {sky130_fd_pr/pfet_01v8.sym} 0 -20 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 0 60 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 150 -200 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 250 -20 0 0 {name=M5
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 250 60 0 0 {name=M6
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 20 0 0 {name=M7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 360 20 0 0 {name=M8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 360 -200 0 0 {name=M9
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
C {devices/iopin.sym} 180 -260 3 0 {name=p1 lab=VCC}
C {devices/ipin.sym} -50 20 0 0 {name=p2 lab=VIN}
C {devices/opin.sym} 160 -110 0 0 {name=p3 lab=VOUT}
C {devices/iopin.sym} 70 -70 3 0 {name=p5 lab=VCCL}
C {devices/iopin.sym} 230 110 1 0 {name=p6 lab=VSS}
