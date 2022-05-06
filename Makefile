.PHONY: clean run wave

test_int_1: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/integrator_1_tb.v design/rtl/integrator_1.v
	make run

test_int_2: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/integrator_2_tb.v design/rtl/integrator_2.v
	make run

test_decim: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/decimator_tb.v design/rtl/decimator.v
	make run

test_digital: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/digital_filter_tb.v design/rtl/*
	make run

run:
	./simv

wave:
	gtkwave dump.vcd

clean:
	rm -rf simv
	rm -rf simv.daidir
	rm -rf csrc
	rm -rf dump.vcd
	rm -rf ucli.key