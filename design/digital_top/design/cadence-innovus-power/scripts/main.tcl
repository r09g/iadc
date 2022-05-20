#=========================================================================
# main.tcl
#=========================================================================
# A generic power strategy that should work for most designs
#
# Author : Christopher Torng
# Date   : January 13, 2020

#-------------------------------------------------------------------------
# Implement power strategy
#-------------------------------------------------------------------------
# Older technologies use a single coarse power mesh, but more advanced
# technologies often use a combination of a fine+coarse power mesh.

source -verbose scripts/power-strategy-singlemesh.tcl
