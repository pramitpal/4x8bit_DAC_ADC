v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 850 -70 1090 -70 {
lab=#net1}
N 960 -110 960 -70 {
lab=#net1}
N 960 -170 1190 -170 {
lab=VCC}
N 960 -140 980 -140 {
lab=VCC}
N 980 -170 980 -140 {
lab=VCC}
N 740 -70 740 -30 {
lab=#net1}
N 740 -70 850 -70 {
lab=#net1}
N 1190 -70 1190 -30 {
lab=#net1}
N 1090 -70 1190 -70 {
lab=#net1}
N 740 30 850 30 {
lab=O2}
N 850 -10 850 30 {
lab=O2}
N 1090 30 1190 30 {
lab=O1}
N 1090 -10 1090 30 {
lab=O1}
N 850 30 850 90 {
lab=O2}
N 890 120 1050 120 {
lab=CLK}
N 1090 30 1090 90 {
lab=O1}
N 830 120 850 120 {
lab=VSS}
N 830 120 830 150 {
lab=VSS}
N 830 150 850 150 {
lab=VSS}
N 850 150 1090 150 {
lab=VSS}
N 1090 150 1110 150 {
lab=VSS}
N 1110 120 1110 150 {
lab=VSS}
N 1090 120 1110 120 {
lab=VSS}
N 650 -140 920 -140 {
lab=CLK}
N 610 -170 960 -170 {
lab=VCC}
N 890 -140 890 -90 {
lab=CLK}
N 890 -90 1150 -90 {
lab=CLK}
N 1240 -140 1240 -90 {
lab=CLK}
N 1150 -90 1240 -90 {
lab=CLK}
N 1190 -170 1280 -170 {
lab=VCC}
N 610 -120 610 -90 {
lab=#net2}
N 1280 -110 1280 -90 {
lab=#net3}
N 610 -30 610 90 {
lab=#net4}
N 610 150 830 150 {
lab=VSS}
N 590 120 610 120 {
lab=VSS}
N 590 120 590 150 {
lab=VSS}
N 590 150 610 150 {
lab=VSS}
N 650 120 780 120 {
lab=CLK}
N 780 70 780 120 {
lab=CLK}
N 780 70 930 70 {
lab=CLK}
N 930 70 930 120 {
lab=CLK}
N 1280 -30 1280 90 {
lab=#net5}
N 1110 150 1280 150 {
lab=VSS}
N 1280 120 1290 120 {
lab=VSS}
N 1290 120 1290 150 {
lab=VSS}
N 1280 150 1290 150 {
lab=VSS}
N 1140 120 1240 120 {
lab=CLK}
N 1140 60 1140 120 {
lab=CLK}
N 1020 60 1140 60 {
lab=CLK}
N 1020 60 1020 120 {
lab=CLK}
N 590 -140 610 -140 {
lab=VCC}
N 590 -170 590 -140 {
lab=VCC}
N 590 -170 610 -170 {
lab=VCC}
N 610 0 700 0 {
lab=#net4}
N 1230 0 1280 0 {
lab=#net5}
N 830 370 850 370 {
lab=VCC}
N 850 280 850 370 {
lab=VCC}
N 830 280 850 280 {
lab=VCC}
N 830 310 840 310 {
lab=VCC}
N 840 310 850 310 {
lab=VCC}
N 830 430 850 430 {
lab=VSS}
N 850 430 850 520 {
lab=VSS}
N 830 520 850 520 {
lab=VSS}
N 830 490 850 490 {
lab=VSS}
N 790 370 790 430 {
lab=O2}
N 760 310 790 310 {
lab=O1}
N 760 310 760 490 {
lab=O1}
N 760 490 790 490 {
lab=O1}
N 950 380 950 420 {
lab=#net6}
N 830 400 920 400 {
lab=#net6}
N 920 400 950 400 {
lab=#net6}
N 1280 -140 1290 -140 {
lab=VCC}
N 1290 -170 1290 -140 {
lab=VCC}
N 1280 -170 1290 -170 {
lab=VCC}
C {devices/vsource.sym} 1540 -550 0 0 {name=VINP value="dc 3.3 pwl 
+0n  \{vip+shift\}
+100n \{vip\}"}
C {devices/lab_wire.sym} 1540 -580 0 0 {name=l22 sig_type=std_logic lab=INP}
C {devices/vsource.sym} 1690 -550 0 0 {name=VINN value="dc 3.3 pwl 
+0n \{vip\}
+100n \{vip+shift\}"}
C {devices/lab_wire.sym} 1690 -580 0 0 {name=l24 sig_type=std_logic lab=INN}
C {sky130_fd_pr/corner.sym} 2320 -650 0 0 {name=CORNER only_toplevel=false corner=tt
spice_ignore=true
}
C {devices/simulator_commands_shown.sym} 2510 -680 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
spice_ignore=true

value="
.param ton = 20n
.param vip = 0.1
.param shift = 0.01

.save all
.tran 10p 100n
**** interactive sim
.control
set color0=white
run
*set filetype=ascii
*write miyahara_comparator.raw vin vip fp fn outp outn clk clka
*plot inp-inn 
plot o1 o2 inp-inn
*quit
.endc
"}
C {devices/code_shown.sym} 1620 -230 0 0 {name=s2 only_toplevel=false 
spice_ignore=false 
value=
"
** this experimental option enables mos model bin 
** selection based on W/NF instead of W
.option chgtol=4e-16 method=gear

.param ton = 20n
.param vip = 0.05
.param shift = 0.05

.control
  option seed = 1
  let mc_runs = 20
  let run = 1

  set o2_node = ' '   ; new variable containing string with space (will become a list of strings, see below)
  set n1_node = ' '
  set n2_node = ' '
  set ldlg_node = ' '

  write comparator_mine.raw
  reset
  set appendwrite

  dowhile run < = mc_runs
    save all
    tran 100p 100n uic
    *write comparator_mine.raw
    let vdiff = v(o2)-v(o1)
    let ldlg = v(ld)-v(lg)
    set o2_node = ( $o2_node \{$curplot\}.vdiff )
    set n1_node = ( $n1_node \{$curplot\}.ld )
    set n2_node = ( $n2_node \{$curplot\}.lg )
    set ldlg = ( $ldlg \{$curplot\}.ldlg )
    let run = run + 1
    reset
  end

** loop end, start plotting **
set color0 = white
*set nolegend                  ; legend for 27 graphs is unreadable
*set units=degrees             ; phase in degrees
set xbrushwidth=2             ; increase linewidth of graphs
plot $o2_node
plot $ldlg

*quit
.endc

"}
C {devices/lab_pin.sym} 1540 -520 1 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1690 -520 1 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1540 -420 0 0 {name=VVSS value="0"}
C {devices/lab_wire.sym} 1540 -450 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1540 -390 1 1 {name=p11 sig_type=std_logic lab=0}
C {devices/vsource.sym} 1690 -420 0 0 {name=VVCC value="3.3"}
C {devices/lab_wire.sym} 1690 -450 0 0 {name=l2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1690 -390 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1610 -650 0 0 {name=VCLK value="pulse(0 3.3 0 10p 10p \{ton\} \{ton*2\})"}
C {devices/lab_wire.sym} 1610 -680 0 0 {name=l3 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1610 -620 1 1 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 940 -140 0 0 {name=M13
L=1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1260 -140 0 0 {name=M17
L=1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 830 -40 0 0 {name=M18
L=0.5
W=8
nf=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1110 -40 0 1 {name=M19
L=0.5
W=8
nf=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 720 0 0 0 {name=M20
L=0.5
W=8
nf=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1210 0 0 1 {name=M21
L=0.5
W=8
nf=8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1070 120 0 0 {name=M22
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 870 120 0 1 {name=M23
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
C {devices/lab_pin.sym} 960 -170 1 0 {name=p19 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 970 150 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 0 2 0 {name=p23 sig_type=std_logic lab=VBP}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 630 -140 0 1 {name=M24
L=1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 590 -60 0 0 {name=M25
L=2
W=0.42
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1300 -60 0 1 {name=M26
L=2
W=0.42
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
C {devices/lab_pin.sym} 1280 -60 2 1 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 -60 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 630 120 0 1 {name=M27
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1260 120 0 0 {name=M28
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
C {devices/lab_pin.sym} 810 -40 2 1 {name=p30 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} 570 -60 2 1 {name=p32 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} 1320 -60 2 0 {name=p33 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} 1130 -40 2 0 {name=p34 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} 800 -140 3 0 {name=p35 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1020 60 0 0 {name=p36 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1090 30 2 1 {name=p37 sig_type=std_logic lab=O1}
C {devices/lab_pin.sym} 850 30 2 0 {name=p38 sig_type=std_logic lab=O2}
C {devices/lab_pin.sym} 850 -40 2 0 {name=p1 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 1090 -40 2 1 {name=p2 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 1190 0 2 1 {name=p3 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 1410 -560 1 0 {name=p4 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 700 370 2 0 {name=p7 sig_type=std_logic lab=N1}
C {devices/lab_pin.sym} 700 450 2 0 {name=p8 sig_type=std_logic lab=N2}
C {devices/lab_pin.sym} 580 390 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 580 470 0 0 {name=p13 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 580 350 2 1 {name=p15 sig_type=std_logic lab=O1}
C {devices/lab_pin.sym} 580 430 2 1 {name=p16 sig_type=std_logic lab=O2}
C {sky130_stdcells/nand2_1.sym} 640 370 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/code.sym} 1440 -240 0 0 {name=TT_RED_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice.tt.red tt_mm
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {sky130_stdcells/nand2_1.sym} 640 450 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 810 310 0 0 {name=M1
L=0.5
W=0.42
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 810 370 0 0 {name=M2
L=0.5
W=0.42
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 810 430 0 0 {name=M3
L=0.5
W=0.42
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 810 490 0 0 {name=M4
L=0.5
W=0.42
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
C {devices/lab_pin.sym} 830 280 1 0 {name=p21 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 830 520 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 760 310 2 1 {name=p20 sig_type=std_logic lab=O1}
C {devices/lab_pin.sym} 790 370 2 1 {name=p24 sig_type=std_logic lab=O2}
C {sky130_stdcells/and2_1.sym} 1010 360 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 1010 440 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 950 340 2 1 {name=p25 sig_type=std_logic lab=N1}
C {devices/lab_pin.sym} 950 460 2 1 {name=p26 sig_type=std_logic lab=N2}
C {devices/lab_pin.sym} 1070 360 2 0 {name=p27 sig_type=std_logic lab=LD}
C {devices/lab_pin.sym} 1070 440 2 0 {name=p31 sig_type=std_logic lab=LG}
C {devices/vsource.sym} 1410 -530 0 0 {name=VVBP value="3.3"}
C {devices/lab_pin.sym} 1410 -500 1 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1320 -560 1 0 {name=p40 sig_type=std_logic lab=VBN}
C {devices/vsource.sym} 1320 -530 0 0 {name=VVBN value="3.3"}
C {devices/lab_pin.sym} 1320 -500 1 1 {name=p41 sig_type=std_logic lab=VSS}
