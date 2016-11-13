all : alu.o

alu.o : alu.t.v alu.v modules.v muxnbit.v
	iverilog alu.t.v -o alu.o

test : alu.o
	./alu.o

clean :
	rm alu.o
