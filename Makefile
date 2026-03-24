CC_X86     = gcc
CC_ARM64   = aarch64-linux-gnu-gcc
CC_ARMHF   = arm-linux-gnueabihf-gcc

CFLAGS     = -Wall -Wextra -O2

.PHONY: all x86_64 arm64 armhf test clean

all: x86_64

x86_64:
	$(CC_X86) $(CFLAGS) -o hello_x86_64 hello.c
	$(CC_X86) $(CFLAGS) -static -o hello_x86_64_static hello.c

arm64:
	$(CC_ARM64) $(CFLAGS) -o hello_arm64 hello.c

armhf:
	$(CC_ARMHF) $(CFLAGS) -o hello_armhf hello.c

test:
	@echo "=== Running x86_64 test ==="
	./hello_x86_64 | grep -q "Hello, World!" && echo "PASS: hello_x86_64" || echo "FAIL: hello_x86_64"
	./hello_x86_64_static | grep -q "Hello, World!" && echo "PASS: hello_x86_64_static" || echo "FAIL: hello_x86_64_static"

clean:
	rm -f hello_x86_64 hello_x86_64_static hello_arm64 hello_armhf
