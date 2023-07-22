v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {Mux.sym} 80 -10 0 0 {name=x1}
C {devices/vsource.sym} -140 120 0 0 {name=VA value="SIN(1.65 2 2k 0)"}
C {devices/lab_pin.sym} -140 150 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -140 90 1 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -70 -10 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -70 10 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -70 -30 0 0 {name=p4 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} 230 10 0 1 {name=p5 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 230 -10 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -30 2 0 {name=p7 sig_type=std_logic lab=VCC}
C {devices/vsource.sym} 10 120 0 0 {name=VB value="SIN(1.65 2 20k 0)"}
C {devices/lab_pin.sym} 10 150 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 90 1 0 {name=p9 sig_type=std_logic lab=B}
C {devices/simulator_commands_shown.sym} 300 70 0 0 {name=Transient_analysis
simulator=ngspice
spice_ignore=false
only_toplevel=false 
value="
v1 vss 0 dc 0
v2 vdd 0 dc 3.3
V3 SEL 0 PULSE(0 3.3 0 1n 1n 100u 200u)
.save all
.tran 0.1u 1m
**** interactive sim
.control
run
*set filetype=ascii
*set filetype=binary
*write opamp_testbench.raw all
plot out sel
*exit
.endc
"}
C {sky130_fd_pr/corner.sym} 300 -120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} -140 270 0 1 {name=p11 sig_type=std_logic lab=OUT}
C {devices/noconn.sym} -140 270 0 0 {name=l1}
C {devices/lab_pin.sym} -140 250 0 1 {name=p12 sig_type=std_logic lab=SEL}
C {devices/noconn.sym} -140 250 0 0 {name=l2}
C {devices/lab_pin.sym} -140 230 2 0 {name=p13 sig_type=std_logic lab=VCC}
C {devices/noconn.sym} -140 230 0 0 {name=l3}
