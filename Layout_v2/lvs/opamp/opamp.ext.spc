* NGSPICE file created from opamp.ext - technology: sky130A

.subckt opamp
X0 VDDA a_197_n460# a_950_n387# VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=0.58 pd=4.29 as=1.16 ps=8.58 w=4 l=1
X1 a_1623_n387# a_204_276# a_1208_n387# VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=0.58 pd=4.58 as=0.58 ps=4.58 w=2 l=0.5
X2 VDDA a_809_n167# VOUT VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=2.32 pd=16.6 as=1.16 ps=8.29 w=8 l=1
X3 VSSA a_1447_146# a_1447_146# VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.29 pd=2.29 as=0.58 ps=4.58 w=2 l=0.5
X4 VOUT a_1623_n387# VSSA VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.58 pd=4.29 as=1.16 ps=8.58 w=4 l=1
X5 a_888_n417# a_511_n457# VSSA VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.58 pd=4.58 as=0.29 ps=2.29 w=2 l=0.5
X6 VSSA a_1623_n387# VOUT VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.58 pd=4.29 as=0.58 ps=4.29 w=4 l=1
X7 VDDA a_197_n460# a_852_188# VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=0.58 pd=4.58 as=0.58 ps=4.58 w=2 l=1
X8 a_511_n457# a_197_n460# VDDA VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=2.32 pd=16.6 as=1.16 ps=8.29 w=8 l=1
X9 VOUT a_809_n167# VDDA VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=1.16 pd=8.29 as=1.16 ps=8.29 w=8 l=1
X10 a_723_188# a_204_276# a_650_n177# VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.58 pd=4.58 as=0.58 ps=4.58 w=2 l=0.5
X11 a_1447_146# a_204_276# a_950_n387# VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=0.58 pd=4.58 as=0.58 ps=4.58 w=2 l=0.5
X12 VOUT a_1623_n387# VSSA VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.58 pd=4.29 as=0.58 ps=4.29 w=4 l=1
X13 VSSA a_511_n457# a_511_n457# VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=1.16 pd=8.58 as=1.16 ps=8.58 w=4 l=0.5
X14 a_888_n417# VIN a_852_188# VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=1.16 pd=8.58 as=0.58 ps=4.29 w=4 l=1
X15 VDDA a_204_276# VSSA sky130_fd_pr__res_generic_nd__hv w=0.42 l=8.32
X16 a_1208_n387# VIN a_1079_n387# VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.58 pd=4.58 as=0.29 ps=2.29 w=2 l=1
X17 VSSA a_1623_n387# VOUT VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=1.16 pd=8.58 as=0.58 ps=4.29 w=4 l=1
X18 VDDA a_197_n460# a_197_n460# VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=1.16 pd=8.29 as=2.32 ps=16.6 w=8 l=1
X19 VDDA a_809_n167# VOUT VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=1.16 pd=8.29 as=1.16 ps=8.29 w=8 l=1
X20 a_204_276# VSSA VSSA sky130_fd_pr__res_generic_nd__hv w=0.48 l=4.46
X21 a_888_n417# a_204_276# a_809_n167# VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.58 pd=4.58 as=0.58 ps=4.58 w=2 l=0.5
X22 VSSA a_511_n457# a_723_188# VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.29 pd=2.29 as=0.58 ps=4.58 w=2 l=0.5
X23 VSSA a_511_n457# a_1079_n387# VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=1.16 pd=8.58 as=1.16 ps=8.58 w=4 l=1
X24 a_1079_n387# VOUT a_950_n387# VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.29 pd=2.29 as=0.58 ps=4.58 w=2 l=1
X25 a_1208_n387# a_197_n460# VDDA VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=1.16 pd=8.58 as=0.58 ps=4.29 w=4 l=1
X26 VSSA a_197_n460# VSSA sky130_fd_pr__res_generic_nd__hv w=0.41 l=15.7
X27 a_852_188# VOUT a_723_188# VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=0.58 pd=4.29 as=1.16 ps=8.58 w=4 l=1
X28 a_1623_n387# a_1447_146# VSSA VSSA sky130_fd_pr__nfet_g5v0d10v5 ad=0.58 pd=4.58 as=0.29 ps=2.29 w=2 l=0.5
X29 VOUT a_809_n167# VDDA VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=1.16 pd=8.29 as=2.32 ps=16.6 w=8 l=1
X30 VDDA a_650_n177# a_650_n177# VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=1.16 pd=8.29 as=2.32 ps=16.6 w=8 l=1
X31 a_809_n167# a_650_n177# VDDA VDDA sky130_fd_pr__pfet_g5v0d10v5 ad=2.32 pd=16.6 as=1.16 ps=8.29 w=8 l=1
.ends

