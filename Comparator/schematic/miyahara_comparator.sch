v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -30 90 -0 {
lab=#net1}
N 90 60 400 60 {
lab=#net2}
N 90 -90 400 -90 {
lab=VCC}
N 400 -30 400 -0 {
lab=#net3}
N -120 -180 10 -180 {
lab=VSS}
N -120 -240 10 -240 {
lab=OUTP}
N 500 -180 630 -180 {
lab=VSS}
N 500 -240 630 -240 {
lab=OUTN}
N 10 -300 10 -240 {
lab=OUTP}
N 500 -300 500 -240 {
lab=OUTN}
N 430 -330 460 -330 {
lab=OUTP}
N 430 -330 430 -210 {
lab=OUTP}
N 430 -210 460 -210 {
lab=OUTP}
N 50 -330 80 -330 {
lab=OUTN}
N 80 -330 80 -210 {
lab=OUTN}
N 50 -210 80 -210 {
lab=OUTN}
N 10 -260 430 -260 {
lab=OUTP}
N 80 -280 500 -280 {
lab=OUTN}
N 670 -330 670 -210 {
lab=#net3}
N 500 -360 630 -360 {
lab=#net4}
N 670 -210 670 -10 {
lab=#net3}
N 400 -10 670 -10 {
lab=#net3}
N -160 -210 -160 -10 {
lab=#net1}
N -160 -10 90 -10 {
lab=#net1}
N -160 -330 -160 -210 {
lab=#net1}
N -120 -360 10 -360 {
lab=#net5}
N 500 -390 500 -360 {
lab=#net4}
N 540 -420 670 -420 {
lab=#net3}
N 670 -420 670 -330 {
lab=#net3}
N 10 -390 10 -360 {
lab=#net5}
N -160 -420 -30 -420 {
lab=#net1}
N -160 -420 -160 -330 {
lab=#net1}
N 10 -450 500 -450 {
lab=VCC}
N 140 -260 140 -240 {
lab=OUTP}
N 390 -280 390 -240 {
lab=OUTN}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 70 30 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 70 -60 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 30 0 1 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 420 -60 0 1 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 90 0 0 {name=M5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -140 -210 0 0 {name=M6
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 -210 0 1 {name=M7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 480 -210 0 0 {name=M8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 650 -210 0 1 {name=M9
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 30 -330 0 1 {name=M10
L=0.5
W=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 480 -330 0 0 {name=M11
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
C {devices/lab_pin.sym} 280 -450 1 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -60 -180 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -180 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 120 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 650 -330 0 1 {name=M12
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
C {devices/lab_pin.sym} 630 -300 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -140 -330 0 0 {name=M13
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
C {devices/lab_pin.sym} -120 -300 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 520 -420 0 1 {name=M14
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -10 -420 0 0 {name=M15
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
C {devices/lab_pin.sym} 260 -90 1 0 {name=p7 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 50 -60 0 0 {name=p8 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 200 90 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 440 -60 0 1 {name=p10 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 50 30 0 0 {name=p11 sig_type=std_logic lab=VIP}
C {devices/lab_pin.sym} 440 30 0 1 {name=p12 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 140 -240 1 1 {name=p14 sig_type=std_logic lab=OUTP}
C {devices/lab_pin.sym} 390 -240 1 1 {name=p15 sig_type=std_logic lab=OUTN}
C {devices/lab_pin.sym} -120 -330 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -120 -210 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 -210 2 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 30 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 30 2 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 90 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 -60 2 0 {name=p22 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 400 -60 2 1 {name=p23 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 500 -210 2 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -210 2 1 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -330 2 1 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -330 2 0 {name=p27 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 500 -420 2 1 {name=p28 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 10 -330 2 1 {name=p29 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 10 -420 2 0 {name=p30 sig_type=std_logic lab=VCC}
C {devices/iopin.sym} 1040 -440 0 0 {name=p13 lab=VCC}
C {devices/ipin.sym} 1060 -400 0 0 {name=p31 lab=CLK}
C {devices/opin.sym} 1040 -340 0 0 {name=p32 lab=OUTN}
C {devices/opin.sym} 1040 -320 0 0 {name=p33 lab=OUTP}
C {devices/ipin.sym} 1060 -380 0 0 {name=p34 lab=VIN}
C {devices/ipin.sym} 1060 -360 0 0 {name=p35 lab=VIP}
C {devices/iopin.sym} 1040 -420 0 0 {name=p36 lab=VSS}
