v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -70 -400 730 130 {flags=graph
y1=-1.7
y2=1.7
ypos1=-0.025
ypos2=3.4
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




hilight_wave=3






digital=0
color="4 5"
node="\\"Out; vout 1.65 -\\"
\\"Input;INN INP - 100 *\\""}
T {ss- delay: 53.82n
tt- delay: 17.93n
ff- delay: 11.86n} 970 -50 0 0 0.5 0.5 {}
C {devices/code.sym} 790 40 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
spice_ignore=false

value="
.param shift = 1m
.option savecurrents
.save all
.save @m.xm16.msky130_fd_pr__nfet_g5v0d10v5[gm]
.save @m.xm7.msky130_fd_pr__pfet_g5v0d10v5[gm]
.tran 10n 2u
*.dc VVIP 0 3.3 0.1
**** interactive sim
.control
set color0=white
run
*set filetype=ascii
write folded_cascode.raw
*plot inn-inp

*plot out

quit
.endc
"}
C {devices/code.sym} 790 -140 0 0 {name=TT_RED_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice.tt.red tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/launcher.sym} 325 190 0 0 {name=h1
descr="load waves_tran" 
tclcommand="xschem raw_read $netlist_dir/folded_cascode.raw tran"
}
C {devices/vsource.sym} 660 300 0 0 {name=VINP value="sin(0 shift 2e6)"
"}
C {devices/lab_pin.sym} 660 390 1 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 790 330 0 0 {name=VVSS value="0"}
C {devices/lab_wire.sym} 790 300 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 790 360 1 1 {name=p11 sig_type=std_logic lab=0}
C {devices/vsource.sym} 860 320 0 0 {name=VVCC value="3.3"}
C {devices/lab_wire.sym} 860 290 0 0 {name=l2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 860 350 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 660 360 0 0 {name=VVIP value="dc 3.3 pwl
+0 2m
+2u 3.28
"}
C {devices/lab_wire.sym} 660 270 0 1 {name=l10 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} 660 330 0 0 {name=l11 sig_type=std_logic lab=INN}
C {folded_cascode.sym} 430 330 0 0 {name=x1}
C {devices/lab_pin.sym} 340 360 1 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 300 3 1 {name=p2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 280 350 2 1 {name=p3 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} 390 330 0 1 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 500 430 0 0 {name=VVCC1 value="sin(1.65 1.65 1e6)"}
C {devices/lab_pin.sym} 500 400 3 1 {name=p6 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 500 460 1 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 310 2 1 {name=p4 sig_type=std_logic lab=INN}
C {devices/parax_cap.sym} 390 340 0 0 {name=C1 gnd=0 value=10f m=1}
C {devices/noconn.sym} 500 400 0 0 {name=l3}
