#!/bin/csh

# set environment variables
setenv PDK_ROOT /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130
setenv SIM_DIR ~/.xschem/simulations
setenv DESIGN_DIR ~/ee372/incremental_delta_sigma_adc

setenv MFLOWGEN_PATH /farmshare/home/classes/ee/372/PDKs
setenv SRAM_PATH     /farmshare/home/classes/ee/372/PDKs/sky130_sram_macros

setenv PATH /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/bin:$PATH
setenv PATH /cad/iverilog/bin:$PATH
setenv MGLS_LICENSE_FILE 1717@cadlic0.stanford.edu

# for netgen
setenv MAGIC_EXT_USE_GDS 1

# load modules
module load base/1.0
module load magic/latest
module load netgen/latest
#module load matlab/caddy2020    # comment this when using Calibre

module load vcs
module load lc
module load syn
module load xcelium
module load genus
module load innovus/20.13.000
module load calibre/2019.1
module load prime

# add search path
set -l path = ( $path /cad/ngspice/36/bin )
set -l path = ( $path /cad/xschem/3.0/bin )
set -l path = ( $path /cad/gaw3/bin )

# Autocomplete for make
complete make \
    'n/-f/f/' \
    'c/*=/f/' \
    'n@*@`cat -s GNUmakefile Makefile makefile |& sed -n -e "/No such file/d" -e "/^[^     #].*:/s/:.*//p"`@'

# ASCII art
echo "\033[0;32m"
echo " ____    _  __ __   __  _   _____    ___         ____    ____    _  __    "
echo "/ ___|  | |/ / \ \ / / / | |___ /   / _ \       |  _ \  |  _ \  | |/ /    " 
echo "\___ \  | ' /   \ V /  | |   |_ \  | | | |      | |_) | | | | | | ' /     "
echo " ___) | | . \    | |   | |  ___) | | |_| |      |  __/  | |_| | | . \     "
echo "|____/  |_|\_\   |_|   |_| |____/   \___/       |_|     |____/  |_|\_\    "
echo 
echo "\033[0m"


