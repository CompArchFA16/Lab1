run: build
	./alu.o

build:
	iverilog -Wall -o alu.o alu.t.v

run-alu-2bit: build-alu-2bit
	./alu_2bit.o

build-alu-2bit:
	iverilog -Wall -o alu_2bit.o alu_2bit.t.v

run-multiplexer: build-multiplexer
	./multiplexer_2_input.o
	./multiplexer_4_input.o
	./multiplexer_8_input.o

build-multiplexer:
	iverilog -Wall -o multiplexer_2_input.o multiplexer_2_input.t.v
	iverilog -Wall -o multiplexer_4_input.o multiplexer_4_input.t.v
	iverilog -Wall -o multiplexer_8_input.o multiplexer_8_input.t.v

run-alu-addsub: build-alu-addsub
	./alu_addsub.o

build-alu-addsub:
	iverilog -Wall -o alu_addsub.o alu_addsub.t.v

clean:
	rm *.o *.vcd
