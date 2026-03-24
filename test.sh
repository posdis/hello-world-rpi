#!/bin/bash
set -e
echo "=== Building ==="
make x86_64
echo ""
echo "=== Testing ==="
make test
echo ""
echo "=== All tests passed! ==="
