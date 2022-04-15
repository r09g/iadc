# enter singularity container
/farmshare/home/classes/ee/admin/software/bin/centos.sh

# set environment variables
setenv PDK_ROOT /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130

# load modules
module load base/1.0
module load magic/latest
module netgen
module matlab/caddy2020

# add search path
set -l path = ( $path /cad/ngspice/36/bin )
set -l path = ( $path /cad/xschem/3.0/bin )
set -l path = ( $path /cad/gaw3/bin )