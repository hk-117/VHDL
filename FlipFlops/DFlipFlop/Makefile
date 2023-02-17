GHDL=ghdl

FLAGS ="--std=08"

all:
	@$(GHDL) -a $(FLAGS) d_flipflop.vhd d_flipflop_tb.vhd
	@$(GHDL) -e $(FLAGS) d_flipflop_tb
	@$(GHDL) -r $(FLAGS) d_flipflop_tb --wave=wave.ghw --stop-time=1us
