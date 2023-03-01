GHDL=ghdl

FLAGS ="--std=08"

all:
	@$(GHDL) -a $(FLAGS) jk_flipflop.vhd registor.vhd registor_tb.vhd
	@$(GHDL) -e $(FLAGS) registor_tb
	@$(GHDL) -r $(FLAGS) registor_tb --wave=wave.ghw --stop-time=1us
