#!/bin/bash

export PATH=/software/user/singularity-ce/current/bin:$PATH
export -n MODULEPATH
unset MODULEPATH
singularity exec --bind /scratch:/scratch --bind /cad:/cad --bind /farmshare:/farmshare --bind /home:/farmshare/home /home/classes/ee/admin/software/containers/centos.sif-latest /bin/tcsh

# /farmshare/home/classes/ee/admin/software/bin/centos.sh
