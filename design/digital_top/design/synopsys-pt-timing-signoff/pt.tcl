#=========================================================================
# reporting.tcl
#=========================================================================
# Final reports
#
# Author      : Alex Carsello
# Date        : November 15, 2021
# Modified by : Allen Pan
# Date        : March 13, 2022
#

source -echo -verbose scripts/read_design.tcl

# Please do not modify the sdir variable.
# Doing so may cause script to fail.
set sdir "." 

set report_default_significant_digits 3

##################################################################
#    Constraint Analysis Section
##################################################################
check_constraints -verbose > reports/check_constraints.report

##################################################################
#    Update_timing and check_timing Section                      #
##################################################################

update_timing -full

report_disable_timing > reports/report_disabled_timing.report

check_timing -verbose > reports/check_timing.report

##################################################################
#    Report_timing Section                                       #
##################################################################
report_global_timing > reports/report_global_timing.report

report_clock -skew -attribute > reports/report_clock.report 

report_analysis_coverage -status_details untested > reports/report_analysis_coverage.report

report_timing \
  -crosstalk_delta \
  -slack_lesser_than 10.0 \
  -max_paths 100 \
  -pba_mode exhaustive \
  -delay max \
  -nosplit \
  -input_pins \
  -nets \
  -transition_time \
  -sort_by slack \
  > reports/$::env(design_name).timing.setup.rpt

report_timing \
    -crosstalk_delta \
    -slack_lesser_than 10.0 \
    -max_paths 100 \
    -pba_mode exhaustive \
    -delay max \
    -nosplit \
    -input_pins \
    -nets \
    -transition_time \
    -path_type full_clock_expanded \
    -sort_by slack \
    > reports/$::env(design_name).timing.full_clock.setup.rpt

report_timing \
    -crosstalk_delta \
    -slack_lesser_than 10.0 \
    -max_paths 100 \
    -pba_mode exhaustive \
    -delay min \
    -nosplit \
    -input_pins \
    -nets \
    -transition_time \
    -sort_by slack \
    > reports/$::env(design_name).timing.hold.rpt

report_timing \
  -crosstalk_delta \
  -slack_lesser_than 10.0 \
  -max_paths 100 \
  -pba_mode exhaustive \
  -delay min \
  -nosplit \
  -input_pins \
  -nets \
  -transition_time \
  -path_type full_clock_expanded \
  -sort_by slack \
  > reports/$::env(design_name).timing.full_clock.hold.rpt

write_sdf -significant_digits 6 design.sdf

save_session $::env(design_name)_session

exit

