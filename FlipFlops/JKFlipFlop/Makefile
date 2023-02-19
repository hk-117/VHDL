GHDL=ghdl

FLAGS ="--std=08"

all:
	@$(GHDL) -a $(FLAGS) jk_flipflop.vhd jk_flipflop_tb.vhd
	@$(GHDL) -e $(FLAGS) jk_flipflop_tb
	@$(GHDL) -r $(FLAGS) jk_flipflop_tb --wave=wave.ghw --stop-time=1us
