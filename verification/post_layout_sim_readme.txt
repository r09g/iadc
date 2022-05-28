#=========================================================================
# Post Layout Simulation in Cadence with S130 PDK Instructions
#=========================================================================

#-------------------------------------------------------------------------
# Motivation
#-------------------------------------------------------------------------
Post layout simulation is necessary to ensure that the design meets the specs. The open-source SKY130 PDK currently only works with Ngspice and Xyce simulators. In terms of simulation speed, Xyce is faster than Ngspice. Ngspice simulations with netlists after PEX is almost impossible to run for any non-trivial design. However, the PDK files for Xyce were not setup yet. In addition, there are problems with the PEX extraction in Magic VLSI tool. Therefore, we turn to Cadence Calibre for PEX and Virtuoso for post-layout simulation. Since the S130 PDK is different from the SKY130 PDK in terms of both file structure as well as syntax, some formatting needs to be done.

#-------------------------------------------------------------------------
# Setting-Up Simulation Files
#-------------------------------------------------------------------------
1. In design/analog_modulator/netlist folder, run convert_s130.sh on the Magic VLSI tool extracted LVS SPICE netlist to generate the netlist with proper Cadence formatting. Use LVS netlist because it contains the necessary decap cells.
2. Generate layout GDS file from Magic VLSI tool. Set FLAT to 0 (do not flatten the design in Magic).

#-------------------------------------------------------------------------
# Cadence-Side Procedure
#-------------------------------------------------------------------------
1. GDS Stream-in
    - Add top cell name
    - Add layermap file /skywater/V2.1.302/LIBS/S130/S8_to_S130.layermap
    - Run translate
2. Add diffusion layer for all ntaps and ptaps (OBSOLETE: Use layermap file)
3. Calibre LVS
    - Add rules
    - Specify input SPICE netlist
    - Specify hcells file
    - Specify VDD VSS and connect all nets by name in Setup -> LVS Options
    - Run LVS
4. Calibre PEX
    - Add rules
    - Specify input SPICE netlist
    - Specify hcells file
    - Specify Extraction type (R, C, CC)
    - Specify Format to DSPF
    - Specify VDD VSS and connect all nets by name in Setup -> LVS Options
    - Run PEX
5. If any NMOS in the generated Spectre PEX netlist has W < 0.42um, need to change this to 0.42um to meet S130 PDK constraints.
6. To run simulation
    - Create dummy schematic with only pins and corresponding symbol. The name of the dummy cell need to match the Spectre PEX netlist exactly.
    - Setup ADE L simulation setup, include sky130.lib.scs model file and Spectre PEX netlist (under DSPF in Simulation Files)



















