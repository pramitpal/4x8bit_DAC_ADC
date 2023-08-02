v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 730 -1110 1660 -640 {flags=graph
y1=-3.8
y2=2.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Out_diff;op on -\\""
hilight_wave=0}
B 2 1670 -1110 2600 -640 {flags=graph
y1=4.46
y2=22.16
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Power(mW); i(v2) vcc * 1000 *\\""}
N 960 -260 960 -130 {
lab=ON}
N 1100 -260 1100 -130 {
lab=OP}
N 1100 -330 1100 -320 {
lab=VCC}
N 960 -330 960 -320 {
lab=VCC}
N 1010 -290 1060 -290 {
lab=CLK}
N 1020 90 1020 100 {
lab=VSS}
N 1020 100 1020 190 {
lab=VSS}
N 960 -70 960 -30 {
lab=net1}
N 1100 -70 1100 -30 {
lab=net1}
N 960 -370 960 -330 {
lab=VCC}
N 960 -370 1100 -370 {
lab=VCC}
N 1100 -370 1100 -330 {
lab=VCC}
N 1000 -290 1010 -290 {
lab=CLK}
N 1220 -100 1240 -100 {
lab=VSS}
N 1240 -100 1240 190 {
lab=VSS}
N 1140 -100 1180 -100 {
lab=INN}
N 900 -100 920 -100 {
lab=INP}
N 890 -100 900 -100 {
lab=INP}
N 800 -260 810 -260 {
lab=VCC}
N 810 -320 810 -260 {
lab=VCC}
N 800 -320 810 -320 {
lab=VCC}
N 960 -30 1100 -30 {
lab=net1}
N 1020 -30 1020 30 {
lab=net1}
N 780 -100 850 -100 {
lab=VSS}
N 780 -100 780 190 {
lab=VSS}
N 840 -130 850 -130 {
lab=net1}
N 840 -130 840 -70 {
lab=net1}
N 840 -70 850 -70 {
lab=net1}
N 1220 -130 1230 -130 {
lab=net1}
N 1230 -130 1230 -70 {
lab=net1}
N 1220 -70 1230 -70 {
lab=net1}
N 850 -70 960 -70 {
lab=net1}
N 1100 -70 1220 -70 {
lab=net1}
N 1300 -290 1310 -290 {
lab=CLK}
N 750 -290 760 -290 {
lab=CLK}
N 1250 -290 1260 -290 {
lab=VCC}
N 1250 -370 1250 -290 {
lab=VCC}
N 1250 -260 1260 -260 {
lab=VCC}
N 1250 -290 1250 -260 {
lab=VCC}
N 1250 -320 1260 -320 {
lab=VCC}
N 800 -290 810 -290 {
lab=VCC}
N 810 -370 810 -320 {
lab=VCC}
N 1450 -370 1450 -330 {
lab=#net2}
N 1450 -460 1450 -430 {
lab=inp}
N 1570 -370 1570 -330 {
lab=#net2}
N 1570 -460 1570 -430 {
lab=inn}
N 810 -370 960 -370 {
lab=VCC}
N 1100 -370 1250 -370 {
lab=VCC}
N 780 190 1240 190 {
lab=VSS}
N 1450 -330 1570 -330 {
lab=#net2}
N 1520 -330 1520 -280 {
lab=#net2}
N 890 150 890 170 {
lab=net1}
N 890 170 950 170 {
lab=net1}
N 950 150 950 170 {
lab=net1}
N 920 150 920 190 {
lab=VSS}
N 1100 150 1100 170 {
lab=net1}
N 1100 170 1160 170 {
lab=net1}
N 1160 150 1160 170 {
lab=net1}
N 1130 150 1130 190 {
lab=VSS}
N 905 -135 905 -100 {
lab=INP}
N 1160 -125 1160 -100 {
lab=INN}
N 1160 -135 1160 -125 {
lab=INN}
N 1160 -30 1160 150 {
lab=net1}
N 1100 -30 1160 -30 {
lab=net1}
N 890 -30 890 150 {
lab=net1}
N 890 -30 960 -30 {
lab=net1}
C {devices/ipin.sym} 1420 -160 0 0 {name=p3 lab=INP}
C {devices/ipin.sym} 1420 -180 0 0 {name=p4 lab=INN}
C {devices/lab_wire.sym} 960 -220 0 0 {name=l2 sig_type=std_logic lab=ON}
C {devices/lab_wire.sym} 1100 -220 0 1 {name=l3 sig_type=std_logic lab=OP}
C {devices/lab_wire.sym} 1020 -10 2 1 {name=l6 sig_type=std_logic lab=net1}
C {devices/lab_wire.sym} 1030 -290 0 0 {name=l9 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 980 60 0 0 {name=l10 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 750 -290 0 0 {name=l11 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1310 -290 0 1 {name=l12 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 1450 -400 0 0 {name=VINP value="dc 3.3 pwl 
+0n  0.5
+100n 0.00"}
C {devices/lab_wire.sym} 1450 -460 0 0 {name=l22 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 1570 -400 0 0 {name=VINN value="dc 3.3 pwl 
+0n 0.0
+100n 0.5"}
C {devices/lab_wire.sym} 1570 -460 0 0 {name=l24 sig_type=std_logic lab=inn}
C {sky130_fd_pr/corner.sym} 1680 -440 0 0 {name=CORNER only_toplevel=false corner=tt
spice_ignore=true
}
C {devices/vsource.sym} 1520 -250 0 0 {name=Vbias value=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 940 -100 0 0 {name=M6
L=0.5
W=4
nf=4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1120 -100 0 1 {name=M4
L=0.5
W=4
nf=4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1000 60 0 0 {name=M3
L=0.5
W=8
nf=4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1080 -290 0 0 {name=M5
L=0.5
W=2
nf=4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 980 -290 0 1 {name=M1
L=0.5
W=2
nf=4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1200 -100 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 870 -100 0 1 {name=M7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 920 130 3 1 {name=M9
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1280 -290 0 1 {name=M10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 780 -290 0 0 {name=M11
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1130 130 3 1 {name=M8
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
C {devices/lab_wire.sym} 920 110 0 0 {name=l7 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1130 110 0 0 {name=l8 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1020 60 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 960 -100 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1100 -100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 905 -135 3 1 {name=p7 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} 1160 -135 3 1 {name=p8 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} 1030 -370 3 1 {name=p9 sig_type=std_logic lab=VCC}
C {devices/ipin.sym} 1420 -140 0 0 {name=p1 lab=CLK}
C {devices/iopin.sym} 1400 -120 0 0 {name=p10 lab=VCC}
C {devices/iopin.sym} 1400 -100 0 0 {name=p11 lab=VSS}
C {devices/opin.sym} 1400 -80 0 0 {name=p12 lab=OP}
C {devices/opin.sym} 1400 -60 0 0 {name=p13 lab=ON}
C {devices/lab_pin.sym} 1020 190 1 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1520 -220 1 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/simulator_commands_shown.sym} 1850 -570 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
spice_ignore=true

value="
.param ton = 4n
.param vip_base = 0.5
.param shift = 0.01

V1 VSS 0 dc 0
V2 VCC 0 dc 3.3
V3 CLK 0 pulse(0 3.3 \{ton\} 0.01ns 0.01ns \{ton\} \{ton*2\})

.save all
.tran 10p 50n uic
**** interactive sim
.control
set color0=white
run
*set filetype=ascii
*write miyahara_comparator.raw vin vip fp fn outp outn clk clka
plot op-on
plot i(v2)
*quit
.endc
"}
C {devices/lab_pin.sym} 960 -290 2 1 {name=p15 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1100 -290 2 0 {name=p16 sig_type=std_logic lab=VCC}
C {devices/code_shown.sym} 1870 -120 0 0 {name=s2 only_toplevel=false 
spice_ignore=false 
value=
"
** this experimental option enables mos model bin 
** selection based on W/NF instead of W
.option chgtol=4e-16 method=gear

.param ton = 10n

V1 VSS 0 dc 0
V2 VCC 0 dc 3.3
V3 CLK 0 pulse(0 3.3 \{ton\} 0.01ns 0.01ns \{ton\} \{ton*2\})

.control
  option seed = 4
  let run = 1
  write comparator_mine.raw
  reset
  set appendwrite
  dowhile run < = 20
    *save op on i(v2)
    save all
    tran 100p 100n uic
    *dc Vin 0 3.3 0.01
    write comparator_mine.raw
    let run = run + 1
    reset
  end
*quit
.endc

"}
C {sky130_fd_pr/corner.sym} 1680 30 0 0 {name=CORNER1 only_toplevel=false corner=tt_mm
spice_ignore=false
}
C {devices/launcher.sym} 1270 -610 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_mine.raw tran"
}
