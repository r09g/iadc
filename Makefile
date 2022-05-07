.PHONY: clean run wave

# test_int_1
1: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/integrator_1_tb.v design/rtl/integrator_1.v
	make run

# test_int_2
2: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/integrator_2_tb.v design/rtl/integrator_2.v
	make run

# test_decim
3: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/decimator_tb.v design/rtl/decimator.v
	make run

# test_digital_random
4: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/digital_filter_tb_random.v design/rtl/*
	make run

# test_digital_ngspice
5: design/rtl/* verification/rtl/*
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp verification/rtl/digital_filter_tb_ngspice.v design/rtl/*
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