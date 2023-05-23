src := $(wildcard src/*.c)
out := iasm
cflags := -O2

all: $(src)
	make clean
	make build
	make run

clean: $(src)
	rm iasm
build: $(src)
	gcc $(src) $(cflags) -o $(out)
run:
	./$(out)
