# Read design
gds read inputs/design_merged.gds
load $::env(design_name)

select top cell
expand
drc euclidean on
drc style drc(full)
drc check
set drcresult [drc listall why]


# Count number of DRC errors
drc catchup
drc count

quit


