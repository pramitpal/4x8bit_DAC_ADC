v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -630 -490 170 -90 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.368e-07
x2=2.7792e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1

rainbow=1
color="8 8 8"
node="out
start
vinp"}
C {/foss/designs/Comparator/schematic/Edge_pursuit_comparator/EPC.sym} 30 0 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} 310 -190 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/simulator_commands_shown.sym} 300 50 0 0 {name=COMMANDS1
simulator=xyce
only_toplevel=false 
value="
V1 VSS 0 dc 0
V2 VCC 0 dc 3.3
V3 START 0 dc 3.3
V4 VINP 0 dc 1.65
V5 VINN 0 dc 1.9

.print tran format=raw file=EPC.raw
+ v(*)
.tran 1n 200n
"}
C {devices/lab_pin.sym} 180 0 0 1 {name=p20 lab=VSS}
C {devices/lab_pin.sym} 180 -20 0 1 {name=p21 lab=VCC}
C {devices/lab_pin.sym} 180 20 0 1 {name=p22 lab=OUT}
C {devices/lab_pin.sym} -120 0 0 0 {name=p1 lab=VINN}
C {devices/lab_pin.sym} -120 -20 0 0 {name=p2 lab=VINP}
C {devices/lab_pin.sym} -120 20 0 0 {name=p3 lab=START}
C {devices/launcher.sym} 250 -260 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/EPC.raw tran"
}
