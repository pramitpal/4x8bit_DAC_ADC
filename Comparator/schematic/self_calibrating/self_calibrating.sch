v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -670 -370 -650 -370 {
lab=VCC}
N -650 -400 -650 -370 {
lab=VCC}
N -980 -370 -710 -370 {
lab=#net1}
N -1040 -370 -1020 -370 {
lab=VCC}
N -1040 -400 -1040 -370 {
lab=VCC}
N -1040 -400 -1020 -400 {
lab=VCC}
N -1020 -340 -970 -340 {
lab=#net1}
N -970 -370 -970 -340 {
lab=#net1}
N -670 -400 -650 -400 {
lab=VCC}
N -910 -120 -910 -90 {
lab=#net2}
N -950 -120 -910 -120 {
lab=#net2}
N -960 -90 -950 -90 {
lab=VSS}
N -960 -90 -960 -60 {
lab=VSS}
N -960 -60 -950 -60 {
lab=VSS}
N -740 -90 -730 -90 {
lab=VSS}
N -730 -90 -730 -60 {
lab=VSS}
N -740 -60 -730 -60 {
lab=VSS}
N -1020 -340 -1020 -290 {
lab=#net1}
N -670 -340 -670 -290 {
lab=#net3}
N -1020 -230 -670 -230 {
lab=#net4}
N -850 -170 -850 -60 {
lab=VSS}
N -1020 -400 -670 -400 {
lab=VCC}
N -910 -90 -780 -90 {
lab=#net2}
N -950 -60 -850 -60 {
lab=VSS}
N -850 -60 -740 -60 {
lab=VSS}
N -740 -150 -740 -120 {
lab=#net5}
N -950 -150 -950 -120 {
lab=#net2}
N -950 -250 -950 -210 {
lab=#net6}
N -950 -250 -740 -250 {
lab=#net6}
N -740 -250 -740 -210 {
lab=#net6}
N -850 -280 -850 -250 {
lab=#net6}
N -850 -400 -850 -340 {
lab=VCC}
N -540 -290 -540 -160 {
lab=out}
N -540 -100 -540 -60 {
lab=VSS}
N -730 -60 -540 -60 {
lab=VSS}
N -540 -130 -520 -130 {
lab=VSS}
N -520 -130 -520 -100 {
lab=VSS}
N -540 -100 -520 -100 {
lab=VSS}
N -540 -320 -530 -320 {
lab=VCC}
N -530 -350 -530 -320 {
lab=VCC}
N -540 -350 -530 -350 {
lab=VCC}
N -540 -400 -540 -350 {
lab=VCC}
N -650 -400 -540 -400 {
lab=VCC}
N -670 -320 -580 -320 {
lab=#net3}
N -740 -130 -580 -130 {
lab=#net5}
N -170 -300 -140 -300 {lab=VSS}
N -170 -550 -140 -550 {lab=VCC}
N -170 -630 -170 -580 {lab=VCC}
N -310 -300 -210 -300 {lab=zero0}
N -310 -470 -310 -300 {lab=zero0}
N -170 -520 -170 -470 {lab=out}
N -310 -550 -310 -470 {lab=zero0}
N -170 -470 -170 -330 {lab=out}
N -310 -550 -210 -550 {lab=zero0}
N 710 -1080 740 -1080 {
lab=VSS}
N 890 -1080 920 -1080 {
lab=VCC}
N 710 -900 710 -870 {
lab=INP}
N 890 -900 890 -870 {
lab=INN}
N 1050 -1050 1050 -1020 {
lab=CAL}
N 110 -180 110 -170 {
lab=out2}
N 70 -210 70 -140 {
lab=out}
N 430 -270 460 -270 {lab=VSS}
N 430 -520 460 -520 {lab=VCC}
N 430 -600 430 -550 {lab=VCC}
N 290 -270 390 -270 {lab=zero1}
N 290 -440 290 -270 {lab=zero1}
N 430 -490 430 -440 {lab=out2}
N 290 -520 290 -440 {lab=zero1}
N 430 -440 430 -300 {lab=out2}
N 290 -520 390 -520 {lab=zero1}
N 660 -180 660 -170 {
lab=out3}
N 620 -210 620 -140 {
lab=out2}
N 980 -270 1010 -270 {lab=VSS}
N 980 -520 1010 -520 {lab=VCC}
N 980 -600 980 -550 {lab=VCC}
N 840 -270 940 -270 {lab=zero2}
N 840 -440 840 -270 {lab=zero2}
N 980 -490 980 -440 {lab=out3}
N 840 -520 840 -440 {lab=zero2}
N 980 -440 980 -300 {lab=out3}
N 840 -520 940 -520 {lab=zero2}
C {devices/simulator_commands_shown.sym} 1400 -730 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
spice_ignore=false

value="
.param ton = 20n
.param VDL = 0.01
.param DELTA = 0.001
.param VCC = 3.3


.save all
.tran 1n 250n
**** interactive sim
.control
set color0=white
run
plot out inn-inp zero0 out3
*quit
.endc
"}
C {devices/code_shown.sym} 1440 -330 0 0 {name=s2 only_toplevel=false 
spice_ignore=true 
value=
"
** this experimental option enables mos model bin 
** selection based on W/NF instead of W
.option chgtol=4e-16 method=gear

.param ton = 20n
.param VDL = 0.05
.param DELTA = 0.05
.param VCC = 3.3
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
C {devices/code.sym} 1180 -300 0 0 {name=TT_RED_MODELS_MM
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice.tt.red tt_mm
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=true
place=header}
C {devices/code.sym} 1180 -670 0 0 {name=TT_RED_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice.tt.red tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -690 -370 0 0 {name=M1
L=4
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
C {devices/lab_pin.sym} -850 -400 1 0 {name=p5 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1000 -370 0 1 {name=M2
L=4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -760 -90 0 0 {name=M3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -930 -90 0 1 {name=M4
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
C {devices/lab_pin.sym} -850 -60 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1040 -260 0 0 {name=M5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -650 -260 0 1 {name=M6
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
C {devices/lab_pin.sym} -1020 -260 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -670 -260 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/isource.sym} -850 -200 0 0 {name=I0 value=18u}
C {devices/lab_pin.sym} -1060 -260 2 1 {name=p6 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} -630 -260 2 0 {name=p8 sig_type=std_logic lab=INN}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -970 -180 0 0 {name=M7
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -720 -180 0 1 {name=M8
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
C {devices/lab_pin.sym} -950 -180 2 0 {name=p15 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -740 -180 2 1 {name=p16 sig_type=std_logic lab=VCC}
C {devices/isource.sym} -850 -310 0 0 {name=I1 value=20u}
C {devices/lab_pin.sym} -700 -180 2 0 {name=p18 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} -990 -180 2 1 {name=p20 sig_type=std_logic lab=INP}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -560 -320 0 0 {name=M9
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -560 -130 0 0 {name=M10
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -540 -230 2 0 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -140 -300 0 1 {name=p179 lab=VSS}
C {devices/lab_pin.sym} -140 -550 0 1 {name=p180 lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -190 -550 0 0 {name=M11
L=4
W=4
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
C {devices/vsource.sym} 710 -990 0 0 {name=VVSS1 value=0}
C {devices/lab_pin.sym} 710 -1080 0 0 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 710 -960 0 0 {name=p14 lab=0}
C {devices/res.sym} 710 -1050 0 0 {name=R1
value=30
footprint=1206
device=resistor
m=1}
C {devices/parax_cap.sym} 750 -1080 3 0 {name=C6 gnd=0 value=100p m=1}
C {devices/vsource.sym} 890 -990 0 0 {name=VVCC2 value=VCC}
C {devices/lab_pin.sym} 890 -1080 0 0 {name=p32 lab=VCC}
C {devices/lab_pin.sym} 890 -960 0 0 {name=p33 lab=0}
C {devices/res.sym} 890 -1050 0 0 {name=R2
value=30
footprint=1206
device=resistor
m=1}
C {devices/parax_cap.sym} 930 -1080 3 0 {name=C11 gnd=0 value=100p m=1}
C {devices/vsource.sym} 710 -840 0 0 {name=VPLUS value=\{VDL\}
spice_ignore=false}
C {devices/lab_pin.sym} 710 -810 0 0 {name=p34 lab=0}
C {devices/lab_pin.sym} 710 -900 0 0 {name=p35 lab=INP}
C {devices/vsource.sym} 890 -840 0 0 {name=VMINUS value="dc \{VDL\} pwl
+0 \{VDL\}
+70.2n \{VDL\}
+70.5n \{VDL-DELTA\}
+109.9n \{VDL-DELTA\}
+110.1n \{VDL\}
+170.2n \{VDL\}
+170.5n \{VDL+DELTA\}
+209.9n \{VDL+DELTA\}
+210.1n \{VDL\}"
spice_ignore=false}
C {devices/lab_pin.sym} 890 -810 0 0 {name=p36 lab=0}
C {devices/lab_pin.sym} 890 -900 0 0 {name=p37 lab=INN}
C {devices/vsource.sym} 1050 -990 0 0 {name=VCAL value="dc VCC pwl
+0 0
+29.9n 0
+30.1n VCC
+69.9n VCC
+70.1n 0
+129.9n 0
+130.1n VCC
+169.9n VCC
+170.1n 0"
spice_ignore=false}
C {devices/lab_pin.sym} 1050 -960 0 0 {name=p38 lab=0}
C {devices/lab_pin.sym} 1050 -1050 0 0 {name=p39 lab=CAL}
C {devices/lab_pin.sym} -170 -630 3 1 {name=p10 lab=VCC}
C {devices/parax_cap.sym} -310 -290 0 0 {name=C2 gnd=0 value=15f m=1}
C {devices/lab_pin.sym} -170 -270 1 1 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -190 -300 0 0 {name=M12
L=4
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
C {Mux.sym} -550 -530 0 0 {name=x1}
C {devices/lab_pin.sym} -700 -530 2 1 {name=p3 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -700 -550 0 0 {name=p12 lab=CAL}
C {devices/lab_pin.sym} -400 -550 2 0 {name=p17 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -400 -530 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -400 -510 2 0 {name=p21 sig_type=std_logic lab=zero0}
C {devices/lab_pin.sym} -310 -420 2 1 {name=p11 sig_type=std_logic lab=zero0}
C {devices/parax_cap.sym} -160 -370 3 0 {name=C1 gnd=0 value=10f m=1}
C {devices/lab_pin.sym} -540 -230 2 0 {name=p22 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -170 -420 2 1 {name=p23 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 110 -140 0 1 {name=p24 lab=VSS}
C {devices/lab_pin.sym} 110 -210 0 1 {name=p25 lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 90 -210 0 0 {name=M13
L=4
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
C {devices/lab_pin.sym} 110 -240 3 1 {name=p26 lab=VCC}
C {devices/lab_pin.sym} 110 -110 1 1 {name=p27 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 90 -140 0 0 {name=M14
L=4
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
C {devices/lab_pin.sym} 110 -170 2 0 {name=p29 sig_type=std_logic lab=out2}
C {Mux.sym} 170 -580 0 0 {name=x2}
C {devices/lab_pin.sym} 20 -580 2 1 {name=p30 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 20 -600 0 0 {name=p31 lab=CAL}
C {devices/lab_pin.sym} 320 -600 2 0 {name=p40 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 320 -580 2 0 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 -560 2 0 {name=p42 sig_type=std_logic lab=zero1}
C {devices/lab_pin.sym} 460 -270 0 1 {name=p43 lab=VSS}
C {devices/lab_pin.sym} 460 -520 0 1 {name=p44 lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 410 -520 0 0 {name=M15
L=4
W=4
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
C {devices/lab_pin.sym} 430 -600 3 1 {name=p45 lab=VCC}
C {devices/parax_cap.sym} 290 -260 0 0 {name=C3 gnd=0 value=15f m=1}
C {devices/lab_pin.sym} 430 -240 1 1 {name=p46 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 -270 0 0 {name=M16
L=4
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
C {devices/lab_pin.sym} 290 -390 2 1 {name=p47 sig_type=std_logic lab=zero1}
C {devices/parax_cap.sym} 440 -340 3 0 {name=C4 gnd=0 value=10f m=1}
C {devices/lab_pin.sym} 430 -390 2 1 {name=p48 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 70 -180 2 1 {name=p49 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 660 -140 0 1 {name=p50 lab=VSS}
C {devices/lab_pin.sym} 660 -210 0 1 {name=p51 lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 640 -210 0 0 {name=M17
L=4
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
C {devices/lab_pin.sym} 660 -240 3 1 {name=p52 lab=VCC}
C {devices/lab_pin.sym} 660 -110 1 1 {name=p53 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 640 -140 0 0 {name=M18
L=4
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
C {devices/lab_pin.sym} 660 -170 2 0 {name=p54 sig_type=std_logic lab=out3}
C {Mux.sym} 720 -580 0 0 {name=x3}
C {devices/lab_pin.sym} 570 -580 2 1 {name=p55 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 570 -600 0 0 {name=p56 lab=CAL}
C {devices/lab_pin.sym} 870 -600 2 0 {name=p57 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 870 -580 2 0 {name=p58 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 870 -560 2 0 {name=p59 sig_type=std_logic lab=zero2}
C {devices/lab_pin.sym} 1010 -270 0 1 {name=p60 lab=VSS}
C {devices/lab_pin.sym} 1010 -520 0 1 {name=p61 lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 960 -520 0 0 {name=M19
L=4
W=4
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
C {devices/lab_pin.sym} 980 -600 3 1 {name=p62 lab=VCC}
C {devices/parax_cap.sym} 840 -260 0 0 {name=C5 gnd=0 value=15f m=1}
C {devices/lab_pin.sym} 980 -240 1 1 {name=p63 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 960 -270 0 0 {name=M20
L=4
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
C {devices/lab_pin.sym} 840 -390 2 1 {name=p64 sig_type=std_logic lab=zero2}
C {devices/parax_cap.sym} 990 -340 3 0 {name=C7 gnd=0 value=10f m=1}
C {devices/lab_pin.sym} 980 -390 2 1 {name=p65 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 620 -180 2 1 {name=p66 sig_type=std_logic lab=out2}
