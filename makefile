all: ALUcontrol.t math.t
	iverilog -o ALUcontrol.t ALUcontrol.t.v
	iverilog -o math.t math.t.v