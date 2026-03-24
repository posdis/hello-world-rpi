#!/bin/bash
# Run this script ON Raspberry Pi to build natively
set -e
echo "[INFO] Building hello for Raspberry Pi..."
gcc -Wall -Wextra -O2 -o hello hello.c
echo "[INFO] Build complete: ./hello"
echo "[TEST] Running..."
./hello
echo "[PASS] Test passed!"
