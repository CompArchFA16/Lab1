all : lut.o

lut.o : lut.v lut.t.v
	iverilog lut.t.v -o lut.o

clean:
	rm lut.o
