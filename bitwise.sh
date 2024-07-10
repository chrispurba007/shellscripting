#!/bin/bash

# Define two numbers for bitwise operations
x=5  # binary: 0101
y=3  # binary: 0011

# Bitwise AND
result=$(( x & y ))
echo "$x & $y = $result"  # Output: 1 (binary: 0001)

# Bitwise OR
result=$(( x | y ))
echo "$x | $y = $result"  # Output: 7 (binary: 0111)

# Bitwise XOR
result=$(( x ^ y ))
echo "$x ^ $y = $result"  # Output: 6 (binary: 0110)

# Bitwise NOT (complement)
result=$(( ~x ))
echo "~$x = $result"  # Output: -6 (two's complement binary representation)

# Left shift
result=$(( x << 2 ))
echo "$x << 2 = $result"  # Output: 20 (binary: 10100)

# Right shift
result=$(( x >> 2 ))
echo "$x >> 2 = $result"  # Output: 1 (binary: 0001)
