#!/bin/bash

sed -i -r 's/([[:digit:]]{2})0000u/0.\1/g' sky130_fd_sc_hd.spice
sed -i -r 's/([[:digit:]]{1})e\+06u/\1/g' sky130_fd_sc_hd.spice
