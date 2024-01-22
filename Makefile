TARGET := libasm
BUILD_DIR := ./build
SRC_ASM_DIR := ./src_asm
SRC_C_DIR := ./src_c
INC_DIR := -I ./inc

# Compiler and Assembler configuration
CC := gcc
ASM := nasm
CFLAGS := $(INC_DIR) -Wall -Wextra -Werror -g -fsanitize=address
ASMFLAGS := -f elf64

all: $(TARGET)

# Source files
ASM_SRCS := $(wildcard $(SRC_ASM_DIR)/*.S)
C_SRCS := $(wildcard $(SRC_C_DIR)/*.c)

# Object files
ASM_OBJS := $(ASM_SRCS:%=$(BUILD_DIR)/%.o)
C_OBJS := $(C_SRCS:%=$(BUILD_DIR)/%.o)

# The final build step
$(TARGET): $(ASM_OBJS) $(C_OBJS)
	$(CC) $(CFLAGS) $(C_OBJS) $(ASM_OBJS) -o $(TARGET) 

# Assembly source build rule
$(BUILD_DIR)/%.S.o: %.S
	mkdir -p $(dir $@)
	$(ASM) $(ASMFLAGS) -o $@ $<

# C source build rule
$(BUILD_DIR)/%.c.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(BUILD_DIR)/*.o

fclean: clean
	rm -f $(TARGET)

re: fclean all

