GHDL=ghdl

FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) xor_gate.vhd xor_gate_testbench.vhd
	@$(GHDL) -e $(FLAGS) xor_gate_testbench
	@$(GHDL) -r $(FLAGS) xor_gate_testbench --wave=wave.ghw --stop-time=1us
