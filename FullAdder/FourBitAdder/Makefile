GHDL=ghdl

FLAGS ="--std=08"

all:
	@$(GHDL) -a $(FLAGS) full_adder.vhd four_bit_adder.vhd four_bit_adder_tb.vhd
	@$(GHDL) -e $(FLAGS) four_bit_adder_tb 
	@$(GHDL) -r $(FLAGS) four_bit_adder_tb --wave=wave.ghw --stop-time=1us
