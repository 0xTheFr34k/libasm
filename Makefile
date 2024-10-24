# Define variables
NAME = libasm.a
SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJ = $(SRC:.s=.o)
CC = nasm
CFLAGS = -f elf64
AR = ar
ARFLAGS = rcs
RM = rm -f

# Default rule
all: $(NAME)

# Create the library
$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

# Compile .s files to .o files
%.o: %.s
	$(CC) $(CFLAGS) $< -o $@

# Clean up object files
clean:
	$(RM) $(OBJ) main

# Clean up the library and object files
fclean: clean
	$(RM) $(NAME) main

# Rebuild everything
re: fclean all

main:
	gcc main.c libasm.a -o main

.PHONY: all clean fclean re

