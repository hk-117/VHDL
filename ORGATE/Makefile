GHDL=ghdl

FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) or_gate_testbench.vhd or_gate.vhd
	@$(GHDL) -e $(FLAGS) or_gate_testbench
	@$(GHDL) -r $(FLAGS) or_gate_testbench --wave=wave.ghw --stop-time=1us
