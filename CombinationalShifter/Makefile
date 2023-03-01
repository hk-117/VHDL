GHDL=ghdl

FLAGS ="--std=08"

all:
	@$(GHDL) -a $(FLAGS) shifter_tb.vhd shifter.vhd
	@$(GHDL) -e $(FLAGS) shifter_tb
	@$(GHDL) -r $(FLAGS) shifter_tb --wave=wave.ghw --stop-time=1us