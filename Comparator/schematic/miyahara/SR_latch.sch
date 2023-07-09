v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -20 -50 10 {
lab=Q}
N -50 70 260 70 {
lab=VSS}
N -50 -80 260 -80 {
lab=VCC}
N 260 -20 260 10 {
lab=QC}
N -90 -50 -90 40 {
lab=QC}
N 300 -50 300 40 {
lab=Q}
N -50 0 300 -0 {
lab=Q}
N -90 -10 260 -10 {
lab=QC}
N -120 0 -50 0 {
lab=Q}
N -120 0 -120 110 {
lab=Q}
N -120 170 -120 190 {
lab=Q}
N 320 170 320 190 {
lab=QC}
N 320 -10 320 110 {
lab=QC}
N 260 -10 320 -10 {
lab=QC}
N -170 220 -160 220 {
lab=R}
N -120 110 -120 170 {
lab=Q}
N 320 110 320 170 {
lab=QC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -70 40 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -70 -50 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 280 40 0 1 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 280 -50 0 1 {name=M4
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
C {devices/lab_pin.sym} -50 40 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 40 2 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -50 2 0 {name=p22 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 260 -50 2 1 {name=p23 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 100 -80 1 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/iopin.sym} 380 -160 0 0 {name=p13 lab=VCC}
C {devices/opin.sym} 380 -60 0 0 {name=p32 lab=Q}
C {devices/ipin.sym} 400 -100 0 0 {name=p34 lab=S}
C {devices/ipin.sym} 400 -80 0 0 {name=p35 lab=R}
C {devices/iopin.sym} 380 -140 0 0 {name=p36 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -140 220 0 0 {name=M7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 340 220 0 1 {name=M9
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
C {devices/lab_pin.sym} -120 250 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 250 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -120 220 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 220 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 70 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -170 220 0 0 {name=p10 sig_type=std_logic lab=R}
C {devices/lab_pin.sym} 360 220 0 1 {name=p14 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} -120 0 2 1 {name=p17 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 320 -10 2 0 {name=p18 sig_type=std_logic lab=QC}
C {devices/opin.sym} 380 -40 0 0 {name=p3 lab=QC}
