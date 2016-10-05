all: ALUcontrol.t math.t alu.t
	iverilog -o ALUcontrol.t ALUcontrol.t.v
	iverilog -o math.t math.t.v
	iverilog -o alu.t alu.t.v