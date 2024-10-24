NASM = nasm
AR = ar
RM = rm -f

LIBRARY = libasm.a

SRC = $(wildcard *.s)
OBJ = $(SRC:.s=.o)

all: $(LIBRARY)
	rm -rf main
	gcc *.o main.c -o main

$(LIBRARY): $(OBJ)
	$(AR) rcs $@ $^

%.o: %.s
	$(NASM) -f elf64 -o $@ $<

clean:
	$(RM) $(OBJ) $(LIBRARY) main

.PHONY: all clean

