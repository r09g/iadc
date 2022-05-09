# Overview
This is the EE372 VLSI Design Project at Stanford University. The chip is an incremental Delta-Sigma ADC in Skywater 130 nm CMOS technology.


Delta-Sigma Modulator Functional Diagram
![dsm_block](./misc/dsm_functional.PNG)

# Specifications
| Specification | Value        |
| ------------- | ------------- |
| ENOB | 12 bits |
| SQNR | 74 dB |
| Conversion Rate | 10 KSPS |
| OSR | 512 |
| Sampling Rate | 5.12 MHz |
| VDD | 1.8 V |
| Input Range | 90% FS |
| Input CM | VDD/2 |

# Setup
To run this flow, please install the following dependencies:

1. `skywater-pdk` - This is the Skywater SKY130 PDK.

2. `open_pdks` - This system helps install the Skywater foundry provided PDK for open-source EDA tools.

3. `skywater-130nm-adk` - This repo has some scripts that convert the SkyWater PDK into the format that mflowgen expects. The files that are in `skywater-130nm-adk/view-standard` are the ones that mflowgen will use.

4. `mflowgen` - This is a tool to create ASIC design flows in a modular fashion.

Make sure the PDK is installed on the FarmShare servers under `/farmshare/home/classes/ee/372/PDKs/` and update the various paths in the `setup.csh` file.

# Running the Flow
The run procedure for analog and digital flows are different. For both flows, first enter the CentOS container and source the setup file.
```
source setup.csh
```

### Analog

For schematic tests, enter the schematic testbench directory
```
cd ./verification/analog_modulator
```
Open a test using XSCHEM by running
```
xschem <testbench_name>.sch
```
Generate a netlist, run NGSPICE simulation, and view the waveforms by clicking the buttons on the top-right corner of the XSCHEM GUI.

### Digital

To run the digital flow, enter the build directory and run the following:
```
cd design/digital_filter/build
mflowgen run --design ../design/
```
Now, if you run `make status` you will see the status of all the steps in the flow. Use the following make targets to run and debug each step. For example to run step number N do:
```
make N
```

# Contact
- Raymond Yang (rhyang@stanford.edu)
- Yaqing Xia (yaqingx@stanford.edu)

