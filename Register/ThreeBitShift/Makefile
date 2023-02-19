GHDL=ghdl

FLAGS ="--std=08"

all:
	@$(GHDL) -a $(FLAGS) flip_flop.vhd register.vhd register_tb.vhd
	@$(GHDL) -e $(FLAGS) register_tb
	@$(GHDL) -r $(FLAGS) register_tb --wave=wave.ghw --stop-time=1us