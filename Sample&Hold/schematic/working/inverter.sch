v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -360 290 -320 {
lab=out}
N 290 -390 300 -390 {
lab=VDD}
N 300 -430 300 -390 {
lab=VDD}
N 290 -430 300 -430 {
lab=VDD}
N 290 -290 300 -290 {
lab=VSS}
N 300 -290 300 -250 {
lab=VSS}
N 290 -250 300 -250 {
lab=VSS}
N 290 -260 290 -250 {
lab=VSS}
N 290 -250 290 -210 {
lab=VSS}
N 290 -430 290 -420 {
lab=VDD}
N 290 -470 290 -430 {
lab=VDD}
N 240 -290 250 -290 {
lab=in}
N 240 -390 240 -290 {
lab=in}
N 240 -390 250 -390 {
lab=in}
N 290 -340 390 -340 {
lab=out}
N 200 -340 240 -340 {
lab=in}
N 200 -470 290 -470 {
lab=VDD}
N 210 -210 290 -210 {
lab=VSS}
N 200 -210 210 -210 {
lab=VSS}
C {devices/iopin.sym} 200 -470 0 1 {name=p1 lab=VDD}
C {devices/iopin.sym} 200 -210 0 1 {name=p2 lab=VSS}
C {devices/ipin.sym} 200 -340 0 0 {name=p4 lab=in}
C {devices/opin.sym} 390 -340 0 0 {name=p3 lab=out}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 270 -390 0 0 {name=M3
L=0.5
W=2
nf=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 270 -290 0 0 {name=M4
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
