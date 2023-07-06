* NGSPICE file created from switch2n_3v3.ext - technology: sky130A

.subckt switch2n_3v3 VOUTH VOUTL DX_BUF DX VREFL VREFH VCC VSS
X0 VOUTH a_n6524_n498# a_n7536_n67# VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
X1 a_n7536_n67# DX_BUF VOUTH VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X2 a_n7536_n67# a_n7390_n590# VSS sky130_fd_pr__res_generic_nd__hv w=0.42 l=2.1
X3 DX_BUF a_n6524_n498# VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X4 VREFL DX_BUF VOUTL VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
X5 a_n7536_n67# VREFH VSS sky130_fd_pr__res_generic_nd__hv w=0.42 l=2.1
X6 a_n6524_n498# DX VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X7 VOUTL a_n6524_n498# VREFL VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X8 VOUTH a_n6524_n498# a_n7390_n590# VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X9 a_n7390_n590# DX_BUF VOUTH VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
X10 a_n7390_n590# a_n7246_n584# VSS sky130_fd_pr__res_generic_nd__hv w=0.42 l=2.1
X11 a_n7246_n584# VREFL VSS sky130_fd_pr__res_generic_nd__hv w=0.42 l=2.1
X12 a_n7246_n584# DX_BUF VOUTL VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X13 DX_BUF a_n6524_n498# VCC VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
X14 a_n6524_n498# DX VCC VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
X15 VOUTL a_n6524_n498# a_n7246_n584# VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
.ends

