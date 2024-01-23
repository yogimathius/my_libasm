TARGET = my_libasm
C_SRCS = src_c/my_libasm.c
ASM_SRCS = $(wildcard src_asm/*.S)
C_OBJS = $(C_SRCS:.c=.o)
ASM_OBJS = $(ASM_SRCS:src_asm/%.S=src_asm/%.o)
OBJS = $(C_OBJS) $(ASM_OBJS)
CC = gcc
ASM = nasm
CFLAGS = -Wall -Wextra -Werror -g3 -fsanitize=address
ASMFLAGS = -f elf64
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET) 

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.S
	$(ASM) $(ASMFLAGS) -o $@ $< 

clean:
	rm -f src_c/*.o src_asm/*.o

fclean: clean
	rm -f $(TARGET)

re: fclean all
