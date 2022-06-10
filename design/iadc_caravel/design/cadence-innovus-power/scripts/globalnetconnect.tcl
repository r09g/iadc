#=========================================================================
# globalnetconnect.tcl
#=========================================================================
# Author : Christopher Torng
# Date   : January 13, 2020

#-------------------------------------------------------------------------
# Global net connections for PG pins
#-------------------------------------------------------------------------

globalNetConnect vccd1    -type pgpin -pin VPWR    -inst * -verbose
globalNetConnect vssd1    -type pgpin -pin VGND    -inst * -verbose
globalNetConnect vssd1    -type pgpin -pin VNB    -inst * -verbose
globalNetConnect vccd1    -type pgpin -pin VPB    -inst * -verbose
