v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -460 -1020 640 -250 {flags=graph
y1=-1.28153
y2=4.85454
ypos1=0.5056
ypos2=3.57323
divy=5
subdivy=4
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vip
q
clk"
color="16 6 8 4"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=7.0
digital=0
x2=4.34529e-08
x1=2.45022e-08
hilight_wave=2}
N 80 -150 80 -120 {
lab=VIN}
C {sky130_fd_pr/corner.sym} 390 -200 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/simulator_commands_shown.sym} 230 -10 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
V1 VSS 0 dc 0
V2 VCC 0 dc 3.3
V3 CLK 0 pulse(0 3.3 0ns 0.01ns 0.01ns 1.8ns 2ns)
V4 VIP 0 dc 1.42

.save all
.tran 1n 200n uic
**** interactive sim
.control
run
*set filetype=ascii
write comparator_testbench.raw q qc vin vip clk
plot q qc vin vip
.endc
"}
C {devices/lab_pin.sym} -370 -90 0 0 {name=p4 lab=VIP}
C {devices/lab_pin.sym} -370 -130 0 0 {name=p5 lab=CLK}
C {devices/vsource.sym} 80 -90 0 0 {name=VIN value="dc 3.3 pwl 
+0 0
+29.9n 0
+30.1n 1.46
+100.9n 0.3
+110.1n 0
+129.9n 0
+130.1n 2.3
+209.9n 0.2
+210.1n 0"
spice_ignore=false}
C {devices/lab_pin.sym} 80 -60 0 0 {name=p40 lab=VSS}
C {devices/lab_pin.sym} 80 -150 0 0 {name=p41 lab=VIN}
C {devices/lab_pin.sym} -370 -110 0 0 {name=p3 lab=VIN}
C {devices/launcher.sym} 200 -200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_testbench.raw tran"
}
C {/foss/designs/Comparator/schematic/miyahara/comparator_top.sym} -220 -100 0 0 {name=x5}
C {devices/lab_pin.sym} -70 -110 0 1 {name=p1 lab=VSS}
C {devices/lab_pin.sym} -70 -130 0 1 {name=p2 lab=VCC}
C {devices/lab_pin.sym} -70 -90 0 1 {name=p6 lab=Q}
C {devices/lab_pin.sym} -70 -70 0 1 {name=p7 lab=QC}
