# Overview
This is the EE372 VLSI Design Project at Stanford University. The chip is an incremental Delta-Sigma ADC in Skywater 130 nm CMOS technology.


Chip System-Level Block Diagram
![sys_blk](./misc/system_block_diagram.PNG)

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

For FarmShare servers, the PDKs should be available under `/farmshare/home/classes/ee/372/PDKs/`, but mflowgen needs to be installed. Make sure to update the various paths in the `setup.csh` file after installing all required dependencies.

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

To run the digital flow, create a virtual environment (only needs to be done once)
```
python -m venv venv
```
and enter this virtual environment (to exit, use `deactivate`)
```
source venv/bin/activate.csh
```
Next, enter the build directory and run the following
```
mkdir -p design/digital_filter/build && cd design/digital_filter/build
mflowgen run --design ../design/
```
Now, if you run `make status` you will see the status of all the steps in the flow. Use the following make targets to run and debug each step. For example to run step number N do:
```
make N
```


Helpful make targets:
*  `make list` - list all the nodes in the graphs and their corresponding step number
*  `make status` - list the build status of all the steps
*  `make graph` - generates a PDF of the graph
*  `make N` - runs step N
*  `make debug-N` - pulls up GUI for the appropriate tool for debugging (at the output of step N)
*  `make clean-N` - removes the folder for step N, and sets the status of steps [N,) to build
*  `make clean-all` - removes folders for all the steps
*  `make runtimes` - lists the runtime for each step

# Contact
- Raymond Yang (rhyang@stanford.edu)
- Yaqing Xia (yaqingx@stanford.edu)

