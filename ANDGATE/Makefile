GHDL=ghdl

FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) and_testbench.vhd and_gate.vhd
	@$(GHDL) -e $(FLAGS) and_testbench
	@$(GHDL) -r $(FLAGS) and_testbench --wave=wave.ghw --stop-time=1us
