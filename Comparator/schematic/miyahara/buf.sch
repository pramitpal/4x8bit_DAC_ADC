v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -50 -50 -20 {
lab=QC}
N -90 -80 -90 10 {
lab=IN}
N 60 -50 60 -20 {
lab=Q}
N 20 -80 20 10 {
lab=QC}
N -50 -40 20 -40 {
lab=QC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -70 10 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -70 -80 0 0 {name=M2
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
C {devices/lab_pin.sym} -50 10 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -80 2 0 {name=p22 sig_type=std_logic lab=VCC}
C {devices/iopin.sym} 380 -190 0 0 {name=p13 lab=VCC}
C {devices/opin.sym} 380 -90 0 0 {name=p32 lab=Q}
C {devices/ipin.sym} 400 -130 0 0 {name=p34 lab=IN}
C {devices/iopin.sym} 380 -170 0 0 {name=p36 lab=VSS}
C {devices/lab_pin.sym} -50 40 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 380 -70 0 0 {name=p3 lab=QC}
C {devices/lab_pin.sym} -50 -110 1 0 {name=p2 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 40 10 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 40 -80 0 0 {name=M4
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
C {devices/lab_pin.sym} 60 10 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 -80 2 0 {name=p4 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 60 40 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 -110 1 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -90 -30 2 1 {name=p8 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} -10 -40 1 1 {name=p9 sig_type=std_logic lab=QC}
C {devices/lab_pin.sym} 60 -40 0 1 {name=p10 sig_type=std_logic lab=Q}
