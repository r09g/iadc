rtl_path = $(DESIGN_DIR)/design/digital_filter/design/rtl
tb_path = $(PWD)

# run all tests
all: 1 clean 2 clean 3 clean 4 clean 5 clean 6 clean

# test_int_1
1:
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp $(tb_path)/integrator_1_tb.v $(rtl_path)/integrator_1.v
	make run

# test_int_2
2:
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp $(tb_path)/integrator_2_tb.v $(rtl_path)/integrator_2.v
	make run

# test_decim
3:
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp $(tb_path)/decimator_tb.v $(rtl_path)/decimator.v
	make run

# test_digital_random
4:
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp $(tb_path)/digital_filter_tb_random.sv $(rtl_path)/*.v
	make run

# test_digital_ngspice
5:
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp $(tb_path)/digital_filter_tb_ngspice.v $(rtl_path)/*.v
	make run
	
# test_shift_register
6:
	vcs -full64 -sverilog -timescale=1ns/1ps -debug_access+pp $(tb_path)/shift_register_tb.v $(rtl_path)/*.v
	make run

.PHONY: clean run wave

run:
	./simv

wave:
	gtkwave run.vcd

clean:
	rm -rf simv
	rm -rf simv.daidir
	rm -rf csrc
	rm -rf run.vcd
	rm -rf ucli.key
	
