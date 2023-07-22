v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1080 -530 1880 -130 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2}
N 40 -180 40 -140 {
lab=Vin}
N 130 130 130 150 {lab=TEMPERAT}
N 150 -50 150 10 {
lab=VSS}
N 330 -50 330 10 {
lab=VCC}
C {devices/vsource.sym} 40 -110 0 0 {name=Vin value="PULSE(0 3.3 0 0.1n 0.1n 20n 40n)"}
C {devices/lab_pin.sym} 310 -340 0 1 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 40 -180 3 1 {name=p2 sig_type=std_logic lab=Vin}
C {devices/code_shown.sym} 490 -360 0 0 {name=s2 only_toplevel=false spice_ignore=false value=
"
** this experimental option enables mos model bin 
** selection based on W/NF instead of W
.option chgtol=4e-16 method=gear

*.param VCCGAUSS = agauss(3.3, 0.05, 1)
*.param VCC = 'VCCGAUSS'
** use following line to remove VCC variations
.param VCC = 3.3

*.param TEMPGAUSS = agauss(40, 30, 1)
*.option temp = 'TEMPGAUSS'
** use following line to remove temperature variations
.option temp = 25

*.param DELTA = 0.002

.control
  option seed = 8
  let run = 1
  save all
  op
  write ./simulation/inverter_tb.raw
  reset
  set appendwrite
  dowhile run < = 50
    *save Vin temperat vcc vss vout
    save all
    *tran 0.1n 80n uic
    dc Vin 0 3.3 0.01
    write ./simulation/inverter_tb.raw
    let run = run + 1
    reset
  end
.endc
"}
C {devices/vsource.sym} 150 40 0 0 {name=VVSS value=0}
C {devices/lab_pin.sym} 150 -50 0 0 {name=p3 lab=VSS}
C {devices/lab_pin.sym} 150 70 0 0 {name=p4 lab=0}
C {devices/vsource.sym} 330 40 0 0 {name=VVCC value=VCC}
C {devices/lab_pin.sym} 330 -50 0 0 {name=p32 lab=VCC}
C {devices/lab_pin.sym} 330 70 0 0 {name=p33 lab=0}
C {devices/lab_pin.sym} 250 -360 3 1 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 250 -320 1 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource_arith.sym} 130 180 0 0 {name=E5 VOL=temper MAX=200 MIN=-200}
C {devices/lab_pin.sym} 130 130 0 1 {name=p113 lab=TEMPERAT}
C {devices/lab_pin.sym} 130 210 0 0 {name=p114 lab=VSS}
C {devices/noconn.sym} 130 130 0 0 {name=l12}
C {sky130_fd_pr/corner.sym} 50 -550 0 0 {name=CORNER2 only_toplevel=true corner=tt_mm}
C {devices/launcher.sym} 1230 -50 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inverter_tb.raw dc"
}
C {devices/lab_pin.sym} 40 -80 3 0 {name=p7 lab=VSS}
C {devices/lab_pin.sym} 200 -340 2 1 {name=p8 sig_type=std_logic lab=Vin}
C {/foss/designs/Sample&Hold/schematic/inverter_monte_carlo_mismatch/inverter.sym} 250 -340 0 0 {name=x1}
