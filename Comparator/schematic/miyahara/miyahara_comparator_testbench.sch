v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1100 -1030 0 -260 {flags=graph
y1=-0.924816
y2=4.18858
ypos1=0.5056
ypos2=3.57323
divy=5
subdivy=4
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="q1

vin
vip

q
qc"
color="16 5 6 9 5"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=7.0
digital=0
x2=1.32963e-07
x1=1.29568e-07
hilight_wave=-1}
N 520 -560 520 -530 {
lab=VIN}
C {miyahara_comparator.sym} -380 20 0 0 {name=x1}
C {devices/lab_pin.sym} -230 10 0 1 {name=p1 lab=VSS}
C {devices/lab_pin.sym} -230 -10 0 1 {name=p2 lab=VCC}
C {sky130_fd_pr/corner.sym} 550 -260 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/simulator_commands_shown.sym} 540 -20 0 0 {name=COMMANDS1
simulator=xyce
only_toplevel=false 
value="
V1 VSS 0 dc 0
V2 VCC 0 dc 3.3
V3 CLK 0 pulse(0 3.3 0ns 0.01ns 0.01ns 1.8ns 2ns)
V4 VIP 0 dc 1.42

.print tran format=raw file=test.raw
+ v(*)
.tran 1n 200n
"}
C {devices/lab_pin.sym} -530 30 0 0 {name=p4 lab=VIP}
C {devices/lab_pin.sym} -530 -10 0 0 {name=p5 lab=CLK}
C {devices/lab_pin.sym} -230 30 0 1 {name=p6 lab=OUTN}
C {devices/lab_pin.sym} -230 50 0 1 {name=p7 lab=OUTP}
C {devices/vsource.sym} 520 -500 0 0 {name=VIN value="dc 3.3 pwl 
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
C {devices/lab_pin.sym} 520 -470 0 0 {name=p40 lab=VSS}
C {devices/lab_pin.sym} 520 -560 0 0 {name=p41 lab=VIN}
C {devices/lab_pin.sym} -530 10 0 0 {name=p3 lab=VIN}
C {devices/lab_pin.sym} 290 60 0 1 {name=p12 lab=Q1}
C {devices/lab_pin.sym} 290 80 0 1 {name=p14 lab=QC1}
C {devices/launcher.sym} 90 -390 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/test.raw tran"
}
C {buf.sym} 140 50 0 0 {name=x3}
C {devices/lab_pin.sym} 290 40 0 1 {name=p13 lab=VSS}
C {devices/lab_pin.sym} 290 20 0 1 {name=p15 lab=VCC}
C {devices/lab_pin.sym} -10 20 0 0 {name=p16 lab=OUTN}
C {devices/lab_pin.sym} 290 160 0 1 {name=p8 lab=Q2}
C {devices/lab_pin.sym} 290 180 0 1 {name=p9 lab=QC2}
C {buf.sym} 140 150 0 0 {name=x2}
C {devices/lab_pin.sym} 290 140 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} 290 120 0 1 {name=p11 lab=VCC}
C {devices/lab_pin.sym} -10 120 0 0 {name=p17 lab=OUTP}
C {SR_latch.sym} 140 -80 0 0 {name=x4}
C {devices/lab_pin.sym} -10 -90 0 0 {name=p18 lab=Q1}
C {devices/lab_pin.sym} -10 -70 0 0 {name=p19 lab=Q2}
C {devices/lab_pin.sym} 290 -90 0 1 {name=p20 lab=VSS}
C {devices/lab_pin.sym} 290 -110 0 1 {name=p21 lab=VCC}
C {devices/lab_pin.sym} 290 -70 0 1 {name=p22 lab=Q}
C {devices/lab_pin.sym} 290 -50 0 1 {name=p23 lab=QC}
