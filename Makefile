.PHONY: clean exec_test

test_int_1: design/rtl/integrator_1.v
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/integrator_1_tb.v design/rtl/integrator_1.v
	make run

test_int_2: design/rtl/integrator_2.v
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/integrator_2_tb.v design/rtl/integrator_2.v
	make run

test_decim: design/rtl/decimator.v
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/decimator_tb.v design/rtl/decimator.v
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