#set environment variables
setenv PDK_ROOT /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130
setenv NGSPICE_DIR ~/.xschem/simulations
setenv DESIGN_DIR ~/ee372/incremental_delta_sigma_adc

# load modules
module load base/1.0
module load magic/latest
module load netgen
module load matlab/caddy2020
module load vcs

# add search path
set -l path = ( $path /cad/ngspice/36/bin )
set -l path = ( $path /cad/xschem/3.0/bin )
set -l path = ( $path /cad/gaw3/bin )

echo "\033[0;32m"
echo "============================================================="
echo "  ____   _  ____   __ _  _____   ___      ____   ____   _  __"
echo " / ___| | |/ /\ \ / // ||___ /  / _ \    |  _ \ |  _ \ | |/ /" 
echo " \___ \ | ' /  \ V / | |  |_ \ | | | |   | |_) || | | || ' / "
echo "  ___) || . \   | |  | | ___) || |_| |   |  __/ | |_| || . \ "
echo " |____/ |_|\_\  |_|  |_||____/  \___/    |_|    |____/ |_|\_\"
echo 
echo "============================================================="
echo "\033[0m"