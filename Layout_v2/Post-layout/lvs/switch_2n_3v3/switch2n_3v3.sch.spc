** sch_path: /foss/designs/8_bit_dac/All_layouts/Layout_v2/lvs/switch_2n_3v3/switch2n_3v3.sch
.subckt switch2n_3v3 VCC VSS VOUTL DX VOUTH DX_BUF VREFH VREFL
*.PININFO VCC:B VSS:B VOUTL:O DX:I VOUTH:O DX_BUF:O VREFH:I VREFL:I
XM1 net1 DX VSS VSS sky130_fd_pr__nfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 net1 DX VCC VCC sky130_fd_pr__pfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM3 DX_BUF net1 VSS VSS sky130_fd_pr__nfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 DX_BUF net1 VCC VCC sky130_fd_pr__pfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM5 VOUTL net1 VREFL VSS sky130_fd_pr__nfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM6 VOUTL net1 net2 VCC sky130_fd_pr__pfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM7 VREFL DX_BUF VOUTL VCC sky130_fd_pr__pfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM8 net2 DX_BUF VOUTL VSS sky130_fd_pr__nfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM9 VOUTH net1 net3 VSS sky130_fd_pr__nfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM10 VOUTH net1 net4 VCC sky130_fd_pr__pfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM11 net3 DX_BUF VOUTH VCC sky130_fd_pr__pfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM12 net4 DX_BUF VOUTH VSS sky130_fd_pr__nfet_g5v0d10v5 L=0.5 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XR1 net3 net4 VSS sky130_fd_pr__res_generic_nd__hv W=1 L=1 mult=1 m=1
XR2 net2 net3 VSS sky130_fd_pr__res_generic_nd__hv W=1 L=1 mult=1 m=1
XR3 VREFL net2 VSS sky130_fd_pr__res_generic_nd__hv W=1 L=1 mult=1 m=1
XR4 net4 VREFH VSS sky130_fd_pr__res_generic_nd__hv W=1 L=1 mult=1 m=1
.ends
.end
