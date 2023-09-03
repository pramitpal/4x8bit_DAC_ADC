v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -680 400 -280 {flags=graph
y1=3.4e-06
y2=4.2e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="5 4 6 8"
node="i(vmeas2)
i(vmeas1)
i(vmeas)
\\"power;i(vvcc) abs()\\""}
N -210 -170 -160 -170 {
lab=#net1}
N -250 -200 -120 -200 {
lab=VCC}
N -210 -170 -210 -140 {
lab=#net1}
N -250 -140 -210 -140 {
lab=#net1}
N -380 -20 -380 10 {
lab=#net2}
N -420 -20 -380 -20 {
lab=#net2}
N -380 10 -290 10 {
lab=#net2}
N -250 -80 -250 -20 {
lab=#net1}
N -380 -200 -380 -170 {
lab=VCC}
N -420 -200 -380 -200 {
lab=VCC}
N -380 -140 -380 -110 {
lab=#net3}
N -420 -140 -380 -140 {
lab=#net3}
N -250 -140 -250 -80 {
lab=#net1}
N -350 70 -100 70 {
lab=#net2}
N -350 10 -350 70 {
lab=#net2}
N -120 -140 -120 -80 {
lab=#net4}
N -60 -20 -60 40 {
lab=#net5}
C {devices/code.sym} 320 -160 0 0 {name=TT_RED_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice.tt.red tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/code.sym} 320 0 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
spice_ignore=false

value="
*.option savecurrents
.tran 1n 50n
*.dc VVCC 0 3.3 0.1
**** interactive sim
.control
set color0=white
run

write cs.raw
*quit
.endc
"}
C {devices/vsource.sym} 190 240 0 0 {name=VVSS value="0"}
C {devices/lab_wire.sym} 190 210 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 190 270 1 1 {name=p11 sig_type=std_logic lab=0}
C {devices/vsource.sym} 260 230 0 0 {name=VVCC value="3.3"}
C {devices/lab_wire.sym} 260 200 0 0 {name=l2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 260 260 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -250 40 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -190 -200 1 0 {name=p13 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -120 -170 2 0 {name=p19 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -230 -170 0 1 {name=M13
L=0.5
W=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -140 -170 0 0 {name=M14
L=0.5
W=2
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
C {devices/lab_pin.sym} -250 -170 2 1 {name=p20 sig_type=std_logic lab=VCC}
C {devices/ammeter.sym} -120 -50 0 0 {name=Vmeas}
C {devices/lab_pin.sym} -120 -20 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 110 -220 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cs.raw tran"
}
C {devices/lab_pin.sym} -420 40 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -420 -200 1 0 {name=p5 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -400 10 0 1 {name=M3
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -420 10 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -270 10 0 0 {name=M4
L=0.5
W=2
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
C {devices/lab_pin.sym} -250 10 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} -420 -50 0 0 {name=Vmeas2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -400 -170 0 1 {name=M1
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -420 -170 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -400 -110 0 1 {name=M2
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -420 -110 2 1 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -80 70 0 0 {name=M5
L=0.5
W=2.15
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
C {devices/lab_pin.sym} -60 100 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} -60 -50 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} -60 -80 1 0 {name=p10 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -60 70 2 0 {name=p14 sig_type=std_logic lab=VSS}
