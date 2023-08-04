v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 600 -330 600 -310 {
lab=#net1}
N 640 -360 680 -360 {
lab=CLK}
N 600 -310 600 -240 {
lab=#net1}
N 600 -180 600 -160 {
lab=#net1}
N 780 -100 870 -100 {
lab=#net2}
N 600 -100 780 -100 {
lab=#net2}
N 780 -130 870 -130 {
lab=VSS}
N 780 -160 870 -160 {
lab=#net1}
N 600 -160 780 -160 {
lab=#net1}
N 830 -190 870 -190 {
lab=VSS}
N 830 -190 830 -130 {
lab=VSS}
N 780 -330 870 -330 {
lab=O2}
N 780 -390 870 -390 {
lab=VCC}
N 600 -390 730 -390 {
lab=VCC}
N 730 -390 780 -390 {
lab=VCC}
N 870 -330 870 -220 {
lab=O2}
N 780 -360 870 -360 {
lab=VCC}
N 830 -390 830 -360 {
lab=VCC}
N 680 -360 740 -360 {
lab=CLK}
N 600 -240 600 -180 {
lab=#net1}
N 910 -360 910 -190 {
lab=O1}
N 910 -190 910 -130 {
lab=O1}
N 1010 -100 1100 -100 {
lab=#net2}
N 1010 -130 1100 -130 {
lab=VSS}
N 1010 -160 1100 -160 {
lab=#net3}
N 1010 -330 1100 -330 {
lab=O1}
N 1010 -390 1100 -390 {
lab=VCC}
N 1010 -360 1100 -360 {
lab=VCC}
N 1060 -390 1060 -360 {
lab=VCC}
N 1010 -330 1010 -220 {
lab=O1}
N 970 -360 970 -130 {
lab=O2}
N 870 -270 970 -270 {
lab=O2}
N 910 -260 1010 -260 {
lab=O1}
N 1140 -360 1200 -360 {
lab=CLK}
N 1100 -390 1240 -390 {
lab=VCC}
N 1240 -360 1250 -360 {
lab=VCC}
N 1250 -390 1250 -360 {
lab=VCC}
N 1240 -390 1250 -390 {
lab=VCC}
N 1240 -330 1240 -160 {
lab=#net3}
N 1100 -160 1240 -160 {
lab=#net3}
N 1100 -100 1240 -100 {
lab=#net2}
N 1010 -190 1050 -190 {
lab=VSS}
N 1050 -190 1050 -130 {
lab=VSS}
N 870 -100 1010 -100 {
lab=#net2}
N 870 -390 1010 -390 {
lab=VCC}
N 940 -100 940 -60 {
lab=#net2}
N 830 -130 830 -90 {
lab=VSS}
N 1050 -130 1050 -90 {
lab=VSS}
C {devices/vsource.sym} 1530 -320 0 0 {name=VINP value="dc 3.3 pwl 
+0n  \{vip+shift\}
+100n \{vip\}"}
C {devices/lab_wire.sym} 1530 -350 0 0 {name=l22 sig_type=std_logic lab=INP}
C {devices/vsource.sym} 1680 -320 0 0 {name=VINN value="dc 3.3 pwl 
+0n \{vip\}
+100n \{vip+shift\}"}
C {devices/lab_wire.sym} 1680 -350 0 0 {name=l24 sig_type=std_logic lab=INN}
C {sky130_fd_pr/corner.sym} 1670 -590 0 0 {name=CORNER only_toplevel=false corner=tt
spice_ignore=false
}
C {devices/simulator_commands_shown.sym} 1850 -570 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
spice_ignore=false

value="
.param ton = 10n
.param vip = 0.01
.param shift = 0.01

.save all
.tran 10p 100n
**** interactive sim
.control
set color0=white
run
*set filetype=ascii
*write miyahara_comparator.raw vin vip fp fn outp outn clk clka
plot inp-inn 
plot o2-o1
*quit
.endc
"}
C {devices/code_shown.sym} 1870 -120 0 0 {name=s2 only_toplevel=false 
spice_ignore=true 
value=
"
** this experimental option enables mos model bin 
** selection based on W/NF instead of W
.option chgtol=1e-16 method=gear

.param ton = 10n
.param vip = 1.2
.param shift = 0.7

.control
  option seed = 1
  let mc_runs = 10
  let run = 1

  set o2_node = ' '   ; new variable containing string with space (will become a list of strings, see below)
  


  write comparator_mine.raw
  reset
  set appendwrite

  dowhile run < = mc_runs
    save all
    tran 100p 100n uic
    *write comparator_mine.raw
    let vdiff = v(o2)-v(o1)
    set o2_node = ( $o2_node \{$curplot\}.vdiff )

    let run = run + 1
    reset
  end

** loop end, start plotting **
set color0 = white
*set nolegend                  ; legend for 27 graphs is unreadable
*set units=degrees             ; phase in degrees
set xbrushwidth=2             ; increase linewidth of graphs
plot $o2_node   ; plot all 27 magnitudes

*quit
.endc

"}
C {sky130_fd_pr/corner.sym} 1680 30 0 0 {name=CORNER1 only_toplevel=false corner=tt_mm
spice_ignore=true
}
C {devices/lab_pin.sym} 1530 -290 1 1 {name=p17 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 580 -130 0 0 {name=M15
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 560 -130 2 1 {name=p26 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} 940 0 3 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -130 0 1 {name=p7 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 920 -30 0 0 {name=M2
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 900 -30 0 0 {name=p18 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 680 -360 3 1 {name=p20 sig_type=std_logic lab=CLK}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 620 -360 0 1 {name=M8
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 600 -390 1 0 {name=p13 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 600 -360 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 890 -130 0 1 {name=M1
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 760 -130 0 0 {name=M3
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 890 -190 0 1 {name=M4
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 890 -360 0 1 {name=M5
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 760 -360 0 0 {name=M6
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 870 -280 2 1 {name=p2 sig_type=std_logic lab=O2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1120 -130 0 1 {name=M11
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 990 -130 0 0 {name=M12
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1120 -360 0 1 {name=M14
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 990 -360 0 0 {name=M16
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 740 -130 2 1 {name=p15 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} 1140 -130 2 0 {name=p16 sig_type=std_logic lab=INP}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 990 -190 0 0 {name=M7
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1220 -360 0 0 {name=M9
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1170 -360 3 1 {name=p1 sig_type=std_logic lab=CLK}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1260 -130 0 1 {name=M10
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1240 -130 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1280 -130 2 0 {name=p4 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} 1010 -280 2 0 {name=p5 sig_type=std_logic lab=O1}
C {devices/lab_pin.sym} 1050 -90 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 830 -90 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 940 -30 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1680 -290 1 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1530 -190 0 0 {name=VVSS value="0"}
C {devices/lab_wire.sym} 1530 -220 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1530 -160 1 1 {name=p11 sig_type=std_logic lab=0}
C {devices/vsource.sym} 1680 -190 0 0 {name=VVCC value="3.3"}
C {devices/lab_wire.sym} 1680 -220 0 0 {name=l2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1680 -160 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1600 -420 0 0 {name=VCLK value="pulse(0 3.3 \{ton\} 1p 1p \{ton\} \{ton*2\})"}
C {devices/lab_wire.sym} 1600 -450 0 0 {name=l3 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1600 -390 1 1 {name=p14 sig_type=std_logic lab=VSS}
