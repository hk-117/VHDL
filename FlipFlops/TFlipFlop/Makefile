GHDL=ghdl

FLAGS ="--std=08"

all:
	@$(GHDL) -a $(FLAGS) t_flipflop.vhd t_flipflop_tb.vhd
	@$(GHDL) -e $(FLAGS) t_flipflop_tb
	@$(GHDL) -r $(FLAGS) t_flipflop_tb --wave=wave.ghw --stop-time=1us
