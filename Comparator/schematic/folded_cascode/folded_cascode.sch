v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -270 640 -250 640 {
lab=VSS}
N -270 640 -270 670 {
lab=VSS}
N -270 670 -90 670 {
lab=VSS}
N -90 640 -90 670 {
lab=VSS}
N -120 640 -90 640 {
lab=VSS}
N -120 590 -120 610 {
lab=N4}
N -250 590 -250 610 {
lab=N3}
N -210 560 -160 560 {
lab=Vb3}
N -270 560 -250 560 {
lab=VSS}
N -270 560 -270 640 {
lab=VSS}
N -120 560 -90 560 {
lab=VSS}
N -90 560 -90 640 {
lab=VSS}
N -210 440 -160 440 {
lab=Vb2}
N -210 270 -160 270 {
lab=Vb1}
N -250 240 -120 240 {
lab=VCC}
N -470 560 -420 560 {
lab=#net1}
N -120 300 -120 410 {
lab=N2}
N -250 300 -250 410 {
lab=N1}
N -490 320 -400 320 {
lab=#net2}
N -490 300 -490 320 {
lab=#net2}
N -210 640 -190 640 {
lab=Vb4}
N -520 560 -470 560 {
lab=#net1}
N -530 320 -490 320 {
lab=#net2}
N -190 640 -160 640 {
lab=Vb4}
N -470 560 -470 590 {
lab=#net1}
N -700 210 -530 210 {
lab=Vb1}
N -700 210 -700 240 {
lab=Vb1}
N -740 240 -700 240 {
lab=Vb1}
N -700 270 -700 300 {
lab=Vb2}
N -740 300 -700 300 {
lab=Vb2}
N -800 590 -760 590 {
lab=Vb3}
N -760 590 -760 620 {
lab=Vb3}
N -760 650 -760 680 {
lab=Vb5}
N -800 650 -760 650 {
lab=Vb5}
N 140 250 140 280 {
lab=#net3}
N 70 340 220 340 {
lab=#net4}
N 180 400 220 400 {
lab=Vb4}
N -250 470 -250 530 {
lab=out2}
N -120 470 -120 530 {
lab=out}
N 170 400 180 400 {
lab=Vb4}
N 170 430 180 430 {
lab=Vb4}
N 170 400 170 430 {
lab=Vb4}
N -560 620 -510 620 {
lab=#net5}
N -560 590 -560 620 {
lab=#net5}
N -600 590 -560 590 {
lab=#net5}
N -610 620 -600 620 {
lab=VSS}
N -610 620 -610 650 {
lab=VSS}
N -610 650 -600 650 {
lab=VSS}
N -600 320 -530 320 {
lab=#net2}
N -600 320 -600 420 {
lab=#net2}
N -700 680 -510 680 {
lab=Vb5}
N -600 480 -600 590 {
lab=#net5}
N 60 570 210 570 {
lab=VCC}
N 210 600 220 600 {
lab=VCC}
N 220 570 220 600 {
lab=VCC}
N 210 570 220 570 {
lab=VCC}
N 50 600 60 600 {
lab=VCC}
N 50 570 50 600 {
lab=VCC}
N 50 570 60 570 {
lab=VCC}
N 100 600 170 600 {
lab=#net6}
N 100 600 100 620 {
lab=#net6}
N 100 620 100 630 {
lab=#net6}
N 60 630 100 630 {
lab=#net6}
N 60 690 210 690 {
lab=#net7}
N 130 720 140 720 {
lab=VSS}
N 140 720 140 750 {
lab=VSS}
N 130 750 140 750 {
lab=VSS}
N 360 410 360 470 {
lab=OP}
N 480 410 480 470 {
lab=#net8}
N 460 440 480 440 {
lab=#net8}
N 420 440 420 570 {
lab=VOUT}
N -760 680 -700 680 {
lab=Vb5}
N -1050 190 -1000 190 {
lab=#net9}
N -1090 160 -960 160 {
lab=VCC}
N -1050 190 -1050 220 {
lab=#net9}
N -1090 220 -1050 220 {
lab=#net9}
N -1220 340 -1220 370 {
lab=#net10}
N -1260 340 -1220 340 {
lab=#net10}
N -1220 370 -1130 370 {
lab=#net10}
N -1090 280 -1090 340 {
lab=#net9}
N -1220 160 -1220 190 {
lab=VCC}
N -1260 160 -1220 160 {
lab=VCC}
N -1220 220 -1220 250 {
lab=#net11}
N -1260 220 -1220 220 {
lab=#net11}
N -1090 220 -1090 280 {
lab=#net9}
N -1190 430 -940 430 {
lab=#net10}
N -1190 370 -1190 430 {
lab=#net10}
N -960 220 -960 280 {
lab=#net12}
N -900 340 -900 400 {
lab=#net13}
N -700 270 -530 270 {
lab=Vb2}
N -1030 540 -1030 570 {
lab=VCC}
N -1070 540 -1030 540 {
lab=VCC}
N -1030 600 -1030 630 {
lab=AG2}
N -1070 600 -1030 600 {
lab=AG2}
N 360 470 360 510 {
lab=OP}
N 360 510 360 570 {
lab=OP}
N 400 440 420 440 {
lab=VOUT}
N 420 440 460 440 {}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -140 640 0 0 {name=M1
L=0.5
W=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -140 560 0 0 {name=M2
L=0.5
W=2
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
C {devices/lab_pin.sym} -250 670 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -190 240 1 0 {name=p13 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -120 440 2 0 {name=p14 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -230 560 0 1 {name=M9
L=0.5
W=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -230 640 0 1 {name=M10
L=0.5
W=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -230 440 0 1 {name=M11
L=0.5
W=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -140 440 0 0 {name=M12
L=0.5
W=2
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
C {devices/lab_pin.sym} -250 440 2 1 {name=p18 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -120 270 2 0 {name=p19 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -230 270 0 1 {name=M13
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -140 270 0 0 {name=M14
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -250 270 2 1 {name=p20 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -400 530 0 1 {name=M16
L=0.5
W=6
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -540 530 0 0 {name=M17
L=0.5
W=6
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
C {devices/lab_pin.sym} -470 710 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -520 500 1 0 {name=p22 sig_type=std_logic lab=N1}
C {devices/lab_pin.sym} -420 500 1 0 {name=p23 sig_type=std_logic lab=N2}
C {devices/lab_pin.sym} -250 400 2 0 {name=p24 sig_type=std_logic lab=N1}
C {devices/lab_pin.sym} -120 400 0 0 {name=p25 sig_type=std_logic lab=N2}
C {devices/lab_pin.sym} -380 530 2 0 {name=p26 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} -560 530 2 1 {name=p27 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} -120 500 2 1 {name=p28 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -620 210 1 0 {name=p3 sig_type=std_logic lab=Vb1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -490 620 0 0 {name=M5
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
C {devices/lab_pin.sym} -490 180 1 0 {name=p29 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -400 350 2 0 {name=p30 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -510 350 0 1 {name=M6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -420 350 0 0 {name=M7
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
C {devices/lab_pin.sym} -530 350 2 1 {name=p31 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -400 380 3 0 {name=p32 sig_type=std_logic lab=N4}
C {devices/lab_pin.sym} -530 380 3 0 {name=p33 sig_type=std_logic lab=N3}
C {devices/lab_pin.sym} -440 350 3 0 {name=p34 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} -490 350 1 1 {name=p35 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} -250 610 2 0 {name=p38 sig_type=std_logic lab=N3}
C {devices/lab_pin.sym} -120 610 0 0 {name=p39 sig_type=std_logic lab=N4}
C {devices/lab_pin.sym} -420 530 0 0 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -520 530 0 1 {name=p42 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -510 210 0 0 {name=M21
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
C {devices/lab_pin.sym} -490 210 2 0 {name=p43 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -470 620 2 0 {name=p47 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -720 210 0 1 {name=M23
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -720 270 0 1 {name=M24
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
C {devices/lab_pin.sym} -740 180 1 0 {name=p49 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -740 210 0 0 {name=p50 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -740 270 0 0 {name=p51 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -780 680 0 1 {name=M25
L=0.5
W=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -780 620 0 1 {name=M26
L=0.5
W=2
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
C {devices/lab_pin.sym} -800 710 3 0 {name=p52 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -800 680 0 0 {name=p53 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -800 620 0 0 {name=p54 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -740 300 3 0 {name=p8 sig_type=std_logic lab=Vb2}
C {devices/lab_pin.sym} -180 270 3 0 {name=p15 sig_type=std_logic lab=Vb1}
C {devices/lab_pin.sym} -180 440 1 0 {name=p55 sig_type=std_logic lab=Vb2}
C {devices/lab_pin.sym} -800 590 1 0 {name=p56 sig_type=std_logic lab=Vb3}
C {devices/lab_pin.sym} -180 560 1 0 {name=p4 sig_type=std_logic lab=Vb3}
C {devices/lab_pin.sym} 140 310 2 0 {name=p57 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 120 310 0 0 {name=M3
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
C {devices/lab_pin.sym} 140 220 2 0 {name=p59 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 120 220 0 0 {name=M15
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 100 220 0 0 {name=p61 sig_type=std_logic lab=Vb1}
C {devices/lab_pin.sym} 100 310 0 0 {name=p62 sig_type=std_logic lab=Vb2}
C {devices/lab_pin.sym} 140 190 1 0 {name=p63 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 50 370 0 0 {name=M27
L=0.5
W=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 240 370 0 1 {name=M28
L=0.5
W=2
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
C {devices/lab_pin.sym} 70 370 2 0 {name=p64 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 220 370 2 1 {name=p65 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -250 500 2 0 {name=p67 sig_type=std_logic lab=out2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 430 0 0 {name=M29
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 220 430 2 0 {name=p69 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 400 0 0 {name=p71 sig_type=std_logic lab=Vb4}
C {devices/lab_pin.sym} 260 370 0 1 {name=p1 sig_type=std_logic lab=AG2}
C {devices/lab_pin.sym} -190 640 1 0 {name=p6 sig_type=std_logic lab=Vb4}
C {devices/lab_pin.sym} 70 400 3 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 460 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -580 620 0 1 {name=M4
L=0.5
W=2
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
C {devices/lab_pin.sym} -600 650 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -620 450 0 0 {name=M8
L=0.5
W=2
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
C {devices/lab_pin.sym} -600 450 2 0 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -640 450 2 1 {name=p16 sig_type=std_logic lab=AG2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -490 680 0 0 {name=M18
L=0.5
W=2
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
C {devices/lab_pin.sym} -470 680 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -510 270 0 0 {name=M19
L=0.5
W=10
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
C {devices/lab_pin.sym} -490 270 2 0 {name=p37 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 80 600 0 1 {name=M20
L=0.5
W=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 190 600 0 0 {name=M22
L=0.5
W=2
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
C {devices/lab_pin.sym} 130 570 1 0 {name=p48 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 230 660 0 1 {name=M30
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 40 660 0 0 {name=M31
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
C {devices/lab_pin.sym} 60 660 2 0 {name=p40 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 660 2 1 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 660 2 1 {name=p45 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 250 660 2 0 {name=p46 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 130 750 3 0 {name=p58 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 630 2 0 {name=p60 sig_type=std_logic lab=OP}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 720 0 0 {name=M32
L=0.5
W=2.5
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
C {devices/lab_pin.sym} -560 680 1 0 {name=p66 sig_type=std_logic lab=Vb5}
C {devices/lab_pin.sym} 90 720 2 1 {name=p68 sig_type=std_logic lab=Vb5}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 410 0 0 {name=M33
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 380 470 0 0 {name=M34
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
C {devices/lab_pin.sym} 400 500 3 0 {name=p70 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 470 2 0 {name=p72 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 380 1 0 {name=p74 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 400 410 2 0 {name=p75 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 520 440 2 0 {name=p76 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 360 440 2 1 {name=p77 sig_type=std_logic lab=OP}
C {sky130_fd_pr/cap_mim_m3_1.sym} 390 570 1 0 {name=C2 model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X spice_ignore=false}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 500 410 0 0 {name=M35
L=0.5
W=6
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 470 0 0 {name=M36
L=0.5
W=2
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
C {devices/lab_pin.sym} 520 500 3 0 {name=p79 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 470 2 0 {name=p80 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 380 1 0 {name=p81 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 520 410 2 0 {name=p82 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 30 370 2 1 {name=p78 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} -1090 400 3 0 {name=p85 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1030 160 1 0 {name=p86 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -960 190 2 0 {name=p87 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1070 190 0 1 {name=M37
L=0.5
W=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -980 190 0 0 {name=M38
L=0.5
W=3.5
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
C {devices/lab_pin.sym} -1090 190 2 1 {name=p89 sig_type=std_logic lab=VCC}
C {devices/ammeter.sym} -960 310 0 0 {name=Vmeas}
C {devices/lab_pin.sym} -1260 400 3 0 {name=p91 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1260 160 1 0 {name=p92 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1240 370 0 1 {name=M39
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
C {devices/lab_pin.sym} -1260 370 2 1 {name=p93 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1110 370 0 0 {name=M40
L=0.5
W=2
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
C {devices/lab_pin.sym} -1090 370 2 0 {name=p94 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} -1260 310 0 0 {name=Vmeas2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1240 190 0 1 {name=M41
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
C {devices/lab_pin.sym} -1260 190 2 1 {name=p95 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1240 250 0 1 {name=M42
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
C {devices/lab_pin.sym} -1260 250 2 1 {name=p96 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -920 430 0 0 {name=M43
L=0.5
W=3.5
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
C {devices/lab_pin.sym} -900 460 3 0 {name=p97 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} -900 310 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} -900 430 2 0 {name=p99 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -960 340 3 0 {name=p84 sig_type=std_logic lab=Vb3}
C {devices/lab_pin.sym} -900 280 1 0 {name=p90 sig_type=std_logic lab=Vb2}
C {devices/lab_pin.sym} -1070 540 1 0 {name=p100 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1050 570 0 1 {name=M44
L=2
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
C {devices/lab_pin.sym} -1070 570 2 1 {name=p101 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1050 630 0 1 {name=M45
L=2
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
C {devices/lab_pin.sym} -1070 630 2 1 {name=p102 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1070 660 3 0 {name=p103 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1030 600 0 1 {name=p104 sig_type=std_logic lab=AG2}
C {devices/opin.sym} 360 100 0 0 {name=p73 lab=VOUT}
C {devices/iopin.sym} 360 120 0 0 {name=p83 lab=VCC}
C {devices/iopin.sym} 360 140 0 0 {name=p98 lab=VSS}
C {devices/ipin.sym} 380 160 0 0 {name=p105 lab=INN}
C {devices/ipin.sym} 380 180 0 0 {name=p106 lab=INP}
