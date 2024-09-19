# Toolchain
CC = arm-none-eabi-gcc
AR = arm-none-eabi-ar
CFLAGS = -Wall -Wextra -O2 -ffreestanding -nostdlib -nostartfiles

# Source files
SRC = bcm2835.c
OBJ = $(SRC:.c=.o)

# Target
TARGET = libbcm2835.a

# Build rules
all: $(TARGET)

$(TARGET): $(OBJ)
	$(AR) rcs $@ $^

%.o: %.c bcm2835.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean
