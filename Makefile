NASM = nasm
AR = ar
RM = rm -f

LIBRARY = libasm.a

SRC = $(wildcard *.s)
OBJ = $(SRC:.s=.o)

all: $(LIBRARY)

$(LIBRARY): $(OBJ)
	$(AR) rcs $@ $^

%.o: %.s
	$(NASM) -f elf64 -o $@ $<

clean:
	$(RM) $(OBJ) $(LIBRARY) main
main:
	gcc $(OBJ) main.c -o main

.PHONY: all clean

