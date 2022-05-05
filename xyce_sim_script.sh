filename=cap_tb
cur_path=$(pwd)
cd ~/.xschem/simulations
sed -i 's+open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice+sky130_reveda/models+g' $filename.spice
Xyce -l xyce_sim.log -r $filename.raw $filename.spice
cd $cur_path
