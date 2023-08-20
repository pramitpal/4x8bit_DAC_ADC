v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -990 -610 -190 -210 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.66255e-05
x2=2.97326e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N -780 40 -780 60 {lab=TEMPERAT}
C {devices/simulator_commands_shown.sym} -50 -600 0 0 {name=Transient_analysis
simulator=ngspice
spice_ignore=false
only_toplevel=false 
value="
.param freq = 4e4
.param t = \{1/(10*freq)\}
.param VCC = 3.3

.save all
.tran 50n 100u
**** interactive sim
.control
run
set xbrushwidth=2
plot VOUT VIN CLK/3
.endc
"}
C {sample_hold.sym} -480 -80 0 0 {name=x1}
C {devices/lab_pin.sym} -330 -60 0 1 {name=p23 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} -330 -100 0 1 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -330 -80 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -630 -100 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -630 -80 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {devices/code.sym} -100 -130 0 0 {name=TT_RED_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice.tt.red tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/code.sym} -90 50 0 0 {name=STIMULI 
only_toplevel=true
place=end
spice_ignore=true

value="
** this experimental option enables mos model bin 
** selection based on W/NF instead of W
.option chgtol=4e-16 method=gear

.param VCC_VAR =10
.param VCCGAUSS = aunif(3.3, 0.033*VCC_VAR)
.param VCC = 'VCCGAUSS'
** use following line to remove VCC variations
*.param VCC = 3.3
.param TEMPGAUSS = agauss(40, 30, 1)
.option temp = 'TEMPGAUSS'
** use following line to remove temperature variations
*.option temp = 27

.param LMIN = 1
.param freq = 4e4
.param t = \{1/(10*freq)\}

*.option savecurrents
.control
  let mc_runs = 5
  option seed = 8
  let run = 1
  save all
  op
  write ./simulation/sample_hold_tb.raw
  reset
  set appendwrite
  dowhile run < = mc_runs
    save vin vout vcc temperat clk
    tran 50n 50u
    write ./simulation/sample_hold_tb.raw
    let run = run + 1
    reset
  end
*quit
.endc
"}
C {devices/vsource.sym} -890 90 0 0 {name=V1 value=0}
C {devices/vsource.sym} -840 90 0 0 {name=V2 value=VCC}
C {devices/vsource.sym} -710 90 0 0 {name=VMINUS value="sin(1.65 1.65 freq)"
spice_ignore=false}
C {devices/lab_pin.sym} -710 60 1 0 {name=p37 lab=VIN}
C {devices/lab_pin.sym} -840 60 3 1 {name=p11 lab=VCC}
C {devices/lab_pin.sym} -890 60 3 1 {name=p12 lab=VSS}
C {devices/lab_pin.sym} -890 120 3 0 {name=p13 lab=0}
C {devices/lab_pin.sym} -710 120 1 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} -840 120 1 1 {name=p16 lab=VSS}
C {devices/vsource_arith.sym} -780 90 0 0 {name=E5 VOL=temper MAX=200 MIN=-200}
C {devices/lab_pin.sym} -780 40 3 1 {name=p113 lab=TEMPERAT}
C {devices/lab_pin.sym} -780 120 3 0 {name=p114 lab=VSS}
C {devices/noconn.sym} -780 40 0 0 {name=l12}
C {devices/vsource.sym} -940 90 0 1 {name=V4 value="pulse(0 3.3 0 1p 1p \{t/10\} \{t\})"}
C {devices/lab_pin.sym} -940 60 3 1 {name=p36 lab=CLK}
C {devices/lab_pin.sym} -940 120 1 1 {name=p38 lab=VSS}
C {devices/launcher.sym} -320 -180 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sample_hold_tb.raw tran"
}
C {devices/noconn.sym} -330 -60 3 0 {name=l1}
