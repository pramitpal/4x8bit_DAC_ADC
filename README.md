# 4x8bit_dac
4 x 8 Bit DAC taget to openroad/openlane flow and sky130 foundary
This analog layout part is done using https://github.com/iic-jku/iic-osic-tools docker container.

This environment is based on the efabless.com FOSS-ASIC-TOOLS.

IIC-OSIC-TOOLS is an all-in-one Docker container for open-source-based integrated circuit designs for analog and digital circuit flows.

# Prerequisites
```bash
   #Step-1: Installing Docker in WSL2 Ubuntu
   sudo apt update
   sudo apt install docker.io -y

```
Next check the docker version 
```
   docker --version
```
Then modify the visudo file
```
   sudo visudo
```
In which enter these 
```
   # Docker daemon specification
   pramit ALL=(ALL) NOPASSWD: /usr/bin/dockerd
```
You can replace pramit with your username


# Run the Klayout FEOL/BEOL/Density/Zero Area/overlapping check
```bash
   cd PostLayout
   ./run_precheck
```

# Post Layout Simulation
```bash
   ngspice resistor_test.spice
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/resistor.png" ></td> </tr> </table>

```bash
   ngspice switch_test.spice
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/switch.png" ></td> </tr> </table>

```bash
   ngspice switch2_test.spice
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/switch2.png" ></td> </tr> </table>


```bash
   ngspice switch2n_test.spice
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/switch2n.png" ></td> </tr> </table>

```bash
   ngspice 2bit_DAC_test.spice 
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/2bit_DAC.png" ></td> </tr> </table>

```bash
   ngspice 3bit_DAC_test.spice 
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/3bit_DAC.png" ></td> </tr> </table>

```bash
   ngspice 4bit_DAC_test.spice 
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/4bit_DAC.png" ></td> </tr> </table>

```bash
   ngspice 5bit_DAC_test.spice 
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/5bit_DAC.png" ></td> </tr> </table>

```bash
   ngspice 6bit_DAC_test.spice 
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/6bit_DAC.png" ></td> </tr> </table>

```bash
   ngspice 7bit_DAC_test.spice 
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/7bit_DAC.png" ></td> </tr> </table>

```bash
   ngspice 8bit_DAC_test.spice 
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/8bit_DAC.png" ></td> </tr> </table>

# Reference
Basic idea and register and switch picked from 
* **avsddac_3v3_sky130_v2 Aim** - https://github.com/vsdip/avsddac_3v3_sky130_v2
