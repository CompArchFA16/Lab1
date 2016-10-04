all : alu.o

alu.o : alu.t.v alu.v
	iverilog alu.t.v -o alu.o

clean :
	rm alu.o
