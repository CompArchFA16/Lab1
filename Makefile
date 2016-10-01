run: build
	./alu.o

build:
	iverilog -Wall -o alu.o alu.t.v
