run: build
	./alu.o

build:
	iverilog -Wall -o alu.o alu.t.v

run-multiplexer: build-multiplexer
	./multiplexer_2_input.o
	./multiplexer_8_input.o

build-multiplexer:
	iverilog -Wall -o multiplexer_2_input.o multiplexer_2_input.t.v
	iverilog -Wall -o multiplexer_8_input.o multiplexer_8_input.t.v
