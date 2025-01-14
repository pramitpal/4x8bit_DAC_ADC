# 4x8bit_dac
4 x 8 Bit DAC taget to openroad/openlane flow and sky130 foundry. The latest Layouts and spice files can be found in [Layout_v2](https://github.com/pramitpal/8bit_dac/tree/main/Layout_v2) directory.
![image](https://github.com/pramitpal/4x8bit_DAC_ADC/assets/41202066/f36da04b-c865-4294-bdeb-a20ac2c87bf7)

| ![dac_top.jpg](Layout_v2/Post-layout/gds/dac_top.png) | 
|:--:| 
| *4 x 8_bit_DAC (dac_top.gds)* |

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
You can replace pramit with your username.
Then adding some text to ~/.bashrc file.
```
   nano ~/.bashrc
```
Add these to the end of the file.
```
# Start Docker daemon automatically when logging in if not running.
RUNNING=`ps aux | grep dockerd | grep -v grep`
if [ -z "$RUNNING" ]; then
    sudo dockerd > /dev/null 2>&1 &
    disown
fi
```
Then add your username to docker group so you can run docker as a non-root user.
```
   sudo usermod -aG docker $USER
```
Then restart WSL terminal to check if docker is successfully installed using ``docker run hello-world``, it should print a Hello World message, after which it is done.

# Pulling and setting up Docker image using a script
Download a script file from this link https://raw.githubusercontent.com/iic-jku/iic-osic-tools/main/start_vnc.sh which is ``start_vnc.sh``

Now to setup our personal design directory, which will be the directory shared between us and the docker container by editing the ``start_vnc.sh`` file as follows.
![image](https://github.com/pramitpal/8bit_dac/assets/41202066/465a61ab-4817-4309-8c28-84b9055796bc)

Now we are ready to start the script by 
```
./start_vnc.sh
```
After the image is pulled successfully a VNC server will be started at ``localhost:5901`` with password ``abc123``.
We can connect to this server via any web browser by going to http://localhost/?password=abc123.
But the recommended way is to connect to the server using TigerVNC viwer.
which can be downloaded from https://sourceforge.net/projects/tigervnc/files/latest/download.

Connection screen of TigerVNC viewer 

<img src="https://github.com/pramitpal/8bit_dac/assets/41202066/d36cb5ab-0c4d-478b-b61b-0a977eeb7c1f" height="125">

The benefit of using this container is the easy and quick setup. Moreover it has tons of latest installed packages and pdks. Which would take a lot of time if installed locally, one after another.

# Generation of lef files from the layout
To generate the .lef files, all the labels in the layout must be made to ports with the port index, class and use properly set.
To make and change a label
```
label <name> <direction(n/s/e/w)> <layer>
```
To erase a label
```
erase label
```
Now to convert a label to a port with the index, class and use
```
port make <port_index>
port class <class>
port use <use>
```
where the valid classes can be: __default, input, output, tristate, bidirectional, inout, feedthrough, and feedthru__

The valid uses can be : __default, analog, signal, digital, power, ground, and clock__

To set a port to be used as an input we have used 
``port class input`` and ``port use signal``.

To set a port to be used as a ground ``port class inout`` and ``port use ground``

To use as a power port ``port class inout`` and ``port use power``.

To set a port as an output port, ``port class output`` and ``port use signal`` are used.

These settings ensure that each of these ports/pins appear correctly in the extracted .lef files.

To extract .lef files from magic after setting all the ports use
```
lef write <filename.lef> -hide
```
A correct lef file screenshot is shown below.

<img src="https://github.com/pramitpal/8bit_dac/assets/41202066/ec788ab4-58e7-4176-83c9-9282f04ccbe5" height="400">


# Running LVS check on the layout and the schematic file
In order to generate the netlist from xschem for running lvs, ``LVS netlist: Top level is a .subckt`` must be checked before netlist extraction. This can be found under the simulation dropdown menu. Now we have generated the prelayout spice netlist.

To generate the post-layout netlist, we will be needing magic. The extraction commands must be run properly to ensure a lvs type netlist is generated with .subckt in the file.
```
select top cell
extract all
ext2spice lvs
ext2spice
```
Before continuing it must be ensured that both the top level subckt has the same name.

Now lvs check is done by netgen which is done by
```
netgen -batch lvs "$NETLIST_LAY $TOPCELL" "$NETLIST_SCH $TOPCELL" \
		"$PDK_ROOT/$PDK/libs.tech/netgen/${PDK}_setup.tcl" \
		comp.out
```
The output report is stored in the current directory itself. If the two netlists match, it will be displayed in the ``comp.out`` file as:

``Final result: Circuits match uniquely.``
The final lvs result of top level dac:
```
Subcircuit pins:
Circuit 1: dac_top                         |Circuit 2: dac_top                         
-------------------------------------------|-------------------------------------------
VDDA                                       |VDDA                                       
VSSA                                       |VSSA                                       
VREFH                                      |VREFH                                      
VCCD                                       |VCCD                                       
VSSD                                       |VSSD                                       
Din2[0]                                    |Din2[0]                                    
Din0[0]                                    |Din0[0]                                    
Din3[0]                                    |Din3[0]                                    
Din1[0]                                    |Din1[0]                                    
Din2[1]                                    |Din2[1]                                    
Din0[1]                                    |Din0[1]                                    
Din3[1]                                    |Din3[1]                                    
Din1[1]                                    |Din1[1]                                    
Din2[2]                                    |Din2[2]                                    
Din0[2]                                    |Din0[2]                                    
Din3[2]                                    |Din3[2]                                    
Din1[2]                                    |Din1[2]                                    
Din2[3]                                    |Din2[3]                                    
Din0[3]                                    |Din0[3]                                    
Din3[3]                                    |Din3[3]                                    
Din1[3]                                    |Din1[3]                                    
VOUT0                                      |VOUT0                                      
VOUT1                                      |VOUT1                                      
VOUT2                                      |VOUT2                                      
VOUT3                                      |VOUT3                                      
Din2[4]                                    |Din2[4]                                    
Din0[4]                                    |Din0[4]                                    
Din3[4]                                    |Din3[4]                                    
Din1[4]                                    |Din1[4]                                    
Din0[5]                                    |Din0[5]                                    
Din3[5]                                    |Din3[5]                                    
Din1[5]                                    |Din1[5]                                    
Din2[5]                                    |Din2[5]                                    
Din0[6]                                    |Din0[6]                                    
Din3[6]                                    |Din3[6]                                    
Din1[6]                                    |Din1[6]                                    
Din2[6]                                    |Din2[6]                                    
Din0[7]                                    |Din0[7]                                    
Din3[7]                                    |Din3[7]                                    
Din1[7]                                    |Din1[7]                                    
Din2[7]                                    |Din2[7]                                    
---------------------------------------------------------------------------------------
Cell pin lists are equivalent.
Device classes dac_top and dac_top are equivalent.

Final result: Circuits match uniquely.
Property errors were found.

The following cells had property errors:
 switch2n_3v3
 level_tx_1bit
 opamp
 dac_top
```
After which we can safely confirm that our layout exactly matches the schematic.

# Measurement of 8-bit DAC characteristics
First the netlist for 8_bit_dac_tx_buffer.mag layout is extracted without parasitics from which we can calculate a rough estimate of the time delay between the input signal and the buffered DAC output.
To extract the netlist without parasitics we use
```
port makeall
extract all
ext2spice scale off
ext2spice cthresh infinite rthresh infinite
ext2spice
```
For measuring the time delay we have given a step input to the D7 input pin and then measured the delay using ngspice builtin commands.
```
.measure tran tdiff_in_vout TRIG v(D7) VAL=0.9 RISE=1 TARG v(VOUT) VAL=0.828 RISE=1
.measure tran tdiff_vout_voutbuf TRIG v(VOUT) VAL=0.828 RISE=1 TARG v(VOUT_BUF) VAL=0.828 RISE=1
```
This gives us two values:
a. Time delay between the D7 input to the unbuffered output
b. Time taken for the buffer to give an output voltage.

Then we can calculate the total time delay between input and output for one buffered 8-bit DAC.
D7->VOUT = 0.853 ns
VOUT->VOUT_BUF = 2.04 ns
Total delay= 2.04ns + 0.853ns = 2.893ns

<img src="T_delay.png" width="650">

In order to measure the output frequency of the output waveform we use 
```
.measure tran time_period TRIG v(VOUT_BUF) VAL=1.65 FALL=1 TARG v(VOUT_BUF) VAL=1.65 FALL=2
```
which for this netlist gives us a value of time_period of 124ns which if calculated turns out to be ``8.0645 MHz``.

<img src="no_parasitic_max_freq.png" width="650">

This is not the most accurate way to find out the characteristics, for the most accurate one we have to perform full RCX extraction which takes care of distributed parasitic resistance and capacitances.
To do that we can run these commands in magic but first we have to convert all top level labels to ports so that we have a top .subckt with ports.
After that we need to flatten the cell to do the extraction, so step by step 
```
select top cell
flatten <cellname_flat>
load <cellname_flat>
select top cell
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs 
ext2spice cthresh 1
ext2spice extresistor on
ext2spice
```

This will give us a huge netlist which we can use for the most correct simulation.

<img src="4_bit_RCX_simulation.png" width="700">

The simulation takes a lot of time to converge so we are using just the transient analysis only which can be specified using 

``` 
.tran 1n 100n uic
```
Next our task is to characterize the DAC using the full RCX netlist, which are:

__A. Settling Time__: Refers to the time it takes for the output voltage of the DAC to stabilize within a specified error band after a change in the digital input code. By simulating the DAC's response to different input code transitions, we can calculate the settling time.
In ngspice we use the ``.meas`` to find the settling time. We are finding the time the buffered output settles within 1% error of the desired voltage. The control commands are as follows:
```
******************************************************
Vin D5 0 PWL(0 0 1u 0 1.0001u Vhigh)

.tran 1n 10u uic

.control
run
****************measuring settling_time***************
meas tran tymax MAX_AT v(vout_buf) from=0.1u to=10u
meas tran yeval FIND v(vout_buf) AT=10u
let tol=0.99*yeval
meas tran teval WHEN v(vout_buf)=tol CROSS=LAST
let settling_time=(teval-tymax)
let total_time=(teval-1e-06)
let max_freq=1/total_time
******************************************************
print total_time
print settling_time
print max_freq
```
<img src="settling_time_total_time.png" width="810"> 

<br/>

__B. Total Time__ : Time taken by the DAC from when the step input is applied to its digital input to the time when the output gets stable and within 1% error.
Here we have total time of ``55.55 ns``.

__C. Maximum Frequency__ : This property is heavily dependet on the parasitics and the circuit design itself and can be calculated by 

```
Max_frequency = 1/ total_time
```
Which we found out to be ``1/ 55.55ns = 18.001 MHz``.

__D. Differential Nonlinearity (DNL)__ : DNL and INL are measures of the linearity of a DAC. DNL quantifies the deviation of the DAC's output voltage from the ideal step size. These properties can be calculated by applying a series of digital input codes and measuring the corresponding analog output voltages.
DNL is the deviation from the ideal step size, normalized to the least significant bit (LSB) size: ``DNL = (Measured Step - Ideal Step) / LSB``.
Where ``Ideal Step Size = Max_Voltage/2^N (N=no of bits)``.
From the below figure it is calculated that the Measured Step size is `` 0.2093 V``
Ideal Step Size = ``0.20625 V (for 4 bit as we are simulating using the full RCX, due to time constraints).``

LSB refers to the Least Significant Bit, which represents the smallest possible change in the digital input code that results in a discernible change in the output voltage which in our case is equal to Ideal step size = ``0.20625 V``.

``DNL= 0.01478 = 1.478 %``.

<table>
  <tr>
    <td align="center"><img src="DNL_Unbuffered.png" width="800" alt="DNL_Unbuffered"></td>
    <td align="center"><img src="DNL_Buffered.png" width="800" alt="DNL_Buffered"></td>
  </tr>
</table>

<br/>

__E. Integral Nonlinearity (INL)__ : INL is the maximum deviation of the output from the ideal straight line between zero and full scale, excluding the effects of zero code and full-scale errors. The INL is calculated for codes 0-255 and is typically expressed in LSBs. A lower INL indicates better linearity.

<table>
  <tr>
    <td align="center"><img src="INL_Unbuffered.png" width="800" alt="INL_Unbuffered"></td>
    <td align="center"><img src="INL_Buffered.png" width="800" alt="INL_Buffered"></td>
  </tr>
</table>

__F. Transfer Characteristics__ : To find the transfer characteristics we have employed a unique approach to do DC analysis multiple times in ngspice and using that to find out the transfer characteristics. For our 8bit dac the test.spice file is as follows.
```
* testing to output binary codes

.param mc_mm_switch=0
.param mc_pr_switch=0

.lib "/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red" tt
.include "8_bit_dac_tx_buffer.spice"

X1 VDDA VSSD VCCD VSSA b0 b1 b2 b3 b4 b5 b6 b7 VOUT VREFH VOUT_BUF x8_bit_dac_tx_buffer

V1 VSSA 0 dc 0
V2 VDDA 0 dc 3.3
V3 VSSD 0 dc 0
V4 VCCD 0 dc 1.8

V5 VREFH 0 dc 3.3

Vb0  b0 0 1
Vb1  b1 0 1
Vb2  b2 0 1
Vb3  b3 0 1
Vb4  b4 0 1
Vb5  b5 0 1
Vb6  b6 0 1
Vb7  b7 0 1

.control
set wr_vecnames
set wr_singlescale
let code = 0
let max_voltage = 1.8
while code<256
	if code eq 0
		let b0 = 0
	else
		let b0 = code % 2  
	end	
	if floor(code / 2) eq 0
		let b1 = 0
	else
		let b1 = floor(code / 2) %2
	end
	if floor(code / 4) eq 0
		let b2 = 0
	else
		let b2 = floor(code / 4) %2
	end
	if floor(code / 8) eq 0
		let b3 = 0
	else
		let b3 = floor(code / 8) %2
	end
	if floor(code / 16) eq 0
		let b4 = 0
	else
		let b4 = floor(code / 16) %2
	end
	if floor(code / 32) eq 0
		let b5 = 0
	else
		let b5 = floor(code / 32) %2
	end
	if floor(code / 64) eq 0
		let b6 = 0
	else
		let b6 = floor(code / 64) %2
	end
	if floor(code / 128) eq 0
		let b7 = 0
	else
		let b7 = floor(code / 128) %2
	end
	
	alter vb0 $&b0*$&max_voltage
	alter vb1 $&b1*$&max_voltage
	alter vb2 $&b2*$&max_voltage
	alter vb3 $&b3*$&max_voltage
	alter vb4 $&b4*$&max_voltage
	alter vb5 $&b5*$&max_voltage
	alter vb6 $&b6*$&max_voltage
	alter vb7 $&b7*$&max_voltage
	
	save all
	op
	wrdata rawfile.txt v(b7) v(b6) v(b5) v(b4) v(b3) v(b2) v(b1) v(b0) v(vout) v(vout_buf)
	if code eq 0 
		set appendwrite
		set wr_vecnames = TRUE
	end
	let code = code + 1
end
quit
.endc

```
After simulation is finished we will have a ``rawfile.txt`` with us whose contents are as follows.
After which we can import these data in a spreadsheet to calculate things like vin vs vout, DNL, INL etc.


<table>
  <tr>
    <td align="center"><img src="rawfile_contents.png" width="800" height="125" alt="rawfile_contents"></td>
    <td align="center"><img src="transfer_characteristic.png" width="800" alt="transfer_characteristic"></td>
  </tr>
</table>
<br/>

# Parameters
<!---
| 	Sl. no.	 | 	Property	 | 	Value	 | 
| 	:-----:	 | 	:-----:	 | 	:-----:	 | 
| 	1	| 	Settling Time	| 	42.3 ns	 | 
| 	2	| 	Total Time	| 	55.55 ns	 | 
| 	3	| 	Maximum Frequency	| 	18.001 MHz	 | 
| 	4 	| 	Minimum Output Voltage | 	0.02 V	 | 
| 	5	| 	Maximum Output Voltage | 	3.23 V	 | 
| 	6	| 	Output Voltage Range | 	3.21 V	 | 
| 	7	| 	Differential Nonlinearity (DNL) | 0.01478	 |
-->
| Parameter| Description| Min | Type | Max | Unit | Condition |
| :---:  | :-: | :-: | :-: | :---:  | :-: | :-: |
|RL|Load resistance| 50|||Mohm|T=-40 to 85C|
|CL|Load capacitance|||1|pF|T=-40 to 85C|
|VDDA|Analog supply| |3.3||V|T=-40 to 85C|
|VCCD|Digital supply voltage||1.8||V|T=-40 to 85C|
|VREFH|Reference voltage high|||3.3|V|T=-40 to 85C|
|RES|Resolution| |8||bit|T=27C|
|INL|Integral Non-linearity||9.6||LSB|T=27C|
|DNL|Differential non-linearity||-1.6 to +0.6||LSB|T=27C|
|Ts|Settling Time||42.3||ns|T=27C, @VDDA = 3.3V|
|Ttot|Total Time||55.55||ns|T=27C, @VDDA = 3.3V|
|Fmax|Maximum Frequency||18.001||MHz|T=27C, @VDDA = 3.3V|
|Vr|Output Voltage Range||3.21||V|T=27C, @VREFH = 3.3V|

# Run the DRC checks using magic and Klayout (FEOL/BEOL/Density/Zero Area/overlapping) check
In order to do the extensive DRC check we use both magic and Klayout to give us the DRC check reports.
But first we need to make the .gds file for the dac_top which can be done by 
```
gds write dac_top.gds
```
We have a well written DRC checking script which can be used for both magic and Klayout. If we use the script without any netlist we can see the help page which shows the various arguments.

```
DRC script for Magic-VLSI and KLayout (IIC@JKU)

Usage: /foss/tools/osic-multitool/iic-drc.sh [-d] [-m|-k|-b|-c] <cellname>
       -m Run Magic DRC (default)
       -k Run KLayout DRC
       -b Run Magic and KLayout DRC
       -c Clean output files
       -d Enable debug information
```

For Magic:
```
./iic-drc.sh -m dac_top
```
After which we will have a ``dac_top.magic.drc.rpt`` file which gives us a list of all the errors which in our case is clean.

<img src="magic_drc_clean.png" width="600">

For Klayout checks:
```
./iic-drc.sh -k dac_top
```
We will get 5 xml files with all the error reports(if any) which are all clean for our case.
Note: These xml files can be imported into the klayout view of the gds by which we can see exactly where our DRC error is in the layout.

<img src="https://github.com/pramitpal/8bit_dac/assets/41202066/edc0b361-91ae-41ed-9ddc-32b65c0f2594" width="550">

# Post Layout Simulation


```bash
   ngspice 8bit_DAC_test.spice 
```
   <table> <tr> <td  align="center"><img src="./docs/source/_static/8bit_DAC.png" ></td> </tr> </table>

# Reference
Basic idea and register and switch picked from 
* **avsddac_3v3_sky130_v2 Aim** - https://github.com/vsdip/avsddac_3v3_sky130_v2
