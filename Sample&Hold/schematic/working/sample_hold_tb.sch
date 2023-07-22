v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {sky130_fd_pr/corner.sym} -60 -450 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -90 -170 0 0 {name=Transient_analysis
simulator=ngspice
spice_ignore=false
only_toplevel=false 
value="
v1 vss 0 dc 0
v2 vcc 0 dc 3.3
V3 VIN 0 SIN(1.65 1.65 1e4 0)
V4 clk 0 PULSE(3.3 0 10n 10p 10p 10n 100n)
R1 VOUT 0 1e9
.save all
.tran 100p 1u
**** interactive sim
.control
run
set filetype=ascii
*set filetype=binary
remzerovec
write opamp_testbench.raw vout vin clk
plot vout vin clk/3
plot i(v2)*vcc
*exit
.endc
"}
C {sample_hold.sym} -480 -50 0 0 {name=x1}
C {devices/lab_pin.sym} -330 -30 0 1 {name=p23 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} -330 -70 0 1 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -330 -50 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -630 -70 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -630 -50 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -630 -30 0 0 {name=p5 sig_type=std_logic lab=CLKN}
C {devices/lab_pin.sym} -870 -90 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -760 -90 0 1 {name=p7 sig_type=std_logic lab=CLKN}
C {devices/lab_pin.sym} -820 -110 3 1 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -820 -70 1 1 {name=p9 sig_type=std_logic lab=VSS}
C {inverter.sym} -820 -90 0 0 {name=x2}
