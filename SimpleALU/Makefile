GHDL=ghdl

FLAGS ="--std=08"

all:
	@$(GHDL) -a -fsynopsys $(FLAGS) alu_tb.vhd alu.vhd
	@$(GHDL) -e -fsynopsys $(FLAGS) alu_tb
	@$(GHDL) -r -fsynopsys $(FLAGS) alu_tb --wave=wave.ghw --stop-time=1us