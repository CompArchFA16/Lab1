all : muxnbit.o

muxnbit.o : muxnbit.t.v muxnbit.v
	iverilog muxnbit.t.v -o muxnbit.o

clean :
	rm muxnbit.o
