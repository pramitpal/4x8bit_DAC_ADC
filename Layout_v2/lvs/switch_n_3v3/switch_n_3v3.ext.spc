* NGSPICE file created from switch_n_3v3.ext - technology: sky130A

.subckt switch_n_3v3 DX DX_BUF D2 D3 D4 D5 D6 D7 VOUT VREFH VREFL VCC VSS
X0 DX_BUF a_n3079_n244# VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X1 VOUT DX_BUF VREFL VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
X2 DX_BUF a_n3079_n244# VCC VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
X3 VREFL a_n3079_n244# VOUT VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X4 a_n3079_n244# DX VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X5 VOUT DX_BUF VREFH VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.5
X6 a_n3079_n244# DX VCC VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
X7 VREFH a_n3079_n244# VOUT VCC sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.5
.ends

