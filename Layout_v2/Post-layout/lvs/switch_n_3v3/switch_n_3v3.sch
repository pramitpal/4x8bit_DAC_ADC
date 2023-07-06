v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -90 80 -70 {
lab=#net1}
N 80 -100 80 -90 {
lab=#net1}
N 80 -130 90 -130 {
lab=VCC}
N 90 -160 90 -130 {
lab=VCC}
N 80 -40 90 -40 {
lab=VSS}
N 90 -40 90 -10 {
lab=VSS}
N 80 -10 90 -10 {
lab=VSS}
N 80 -160 90 -160 {
lab=VCC}
N 40 -130 40 -40 {
lab=DX}
N 310 -90 310 -70 {
lab=DX_BUF}
N 310 -100 310 -90 {
lab=DX_BUF}
N 310 -130 320 -130 {
lab=VCC}
N 320 -160 320 -130 {
lab=VCC}
N 310 -40 320 -40 {
lab=VSS}
N 320 -40 320 -10 {
lab=VSS}
N 310 -10 320 -10 {
lab=VSS}
N 310 -160 320 -160 {
lab=VCC}
N 270 -130 270 -40 {
lab=#net1}
N 80 -90 270 -90 {
lab=#net1}
N 90 -160 310 -160 {
lab=VCC}
N 90 -10 90 0 {
lab=VSS}
N 310 -10 310 -0 {
lab=VSS}
N 190 -180 190 -160 {
lab=VCC}
N 240 160 240 180 {
lab=VOUT}
N 240 150 240 160 {
lab=VOUT}
N 240 120 250 120 {
lab=VCC}
N 240 210 250 210 {
lab=#net2}
N 240 240 250 240 {
lab=VREFL}
N 240 90 250 90 {
lab=VREFH}
N 200 120 200 210 {
lab=#net1}
N 250 240 250 250 {
lab=VREFL}
N 450 160 450 200 {
lab=VOUT}
N 450 150 450 160 {
lab=VOUT}
N 400 210 400 230 {
lab=VCC}
N 400 230 450 230 {
lab=VCC}
N 400 120 400 130 {
lab=VSS}
N 400 120 450 120 {
lab=VSS}
N 490 120 490 230 {
lab=DX_BUF}
N 250 90 450 90 {
lab=VREFH}
N 240 160 450 160 {
lab=VOUT}
N 250 250 250 260 {
lab=VREFL}
N 250 260 450 260 {
lab=VREFL}
N 180 150 200 150 {
lab=#net1}
N 180 -90 180 150 {
lab=#net1}
N 490 170 540 170 {
lab=DX_BUF}
N 540 -80 540 170 {
lab=DX_BUF}
N 310 -80 540 -80 {
lab=DX_BUF}
N 10 -80 40 -80 {
lab=DX}
N -20 -80 10 -80 {
lab=DX}
N 380 70 380 90 {
lab=VREFH}
N 360 260 360 280 {
lab=VREFL}
N 130 -190 130 -180 {
lab=VCC}
N 130 -180 190 -180 {
lab=VCC}
N 50 0 50 30 {
lab=VSS}
N 50 0 90 0 {
lab=VSS}
N 540 -50 550 -50 {
lab=DX_BUF}
N 350 160 350 170 {
lab=VOUT}
N 90 -0 310 0 {
lab=VSS}
N 90 0 90 30 {
lab=VSS}
N 400 190 400 210 {
lab=VCC}
N 400 180 400 190 {
lab=VCC}
N 250 120 260 120 {
lab=VCC}
N 250 210 270 210 {}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 60 -40 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 60 -130 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 290 -40 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 290 -130 0 0 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 210 0 0 {name=M5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 220 120 0 0 {name=M6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 470 230 0 1 {name=M7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 470 120 0 1 {name=M8
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
C {devices/iopin.sym} 130 -190 1 1 {name=p6 lab=VCC}
C {devices/iopin.sym} 50 30 3 1 {name=p7 lab=VSS}
C {devices/opin.sym} 550 -50 0 0 {name=p10 lab=DX_BUF}
C {devices/opin.sym} 350 170 1 0 {name=p2 lab=VOUT}
C {devices/ipin.sym} -20 -80 0 0 {name=p1 lab=DX}
C {devices/ipin.sym} 380 70 1 0 {name=p3 lab=VREFH}
C {devices/ipin.sym} 360 280 3 0 {name=p4 lab=VREFL}
C {devices/lab_pin.sym} 190 -180 0 1 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 90 30 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 180 0 1 {name=p11 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 260 120 0 1 {name=p18 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 270 210 0 1 {name=p19 sig_type=std_logic lab=VSS}
