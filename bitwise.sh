#!/bin/bash

# Mendefinisikan dua angka untuk operasi bitwise
x=5  # dalam biner: 0101
y=3  # dalam biner: 0011

# Operasi Bitwise AND
hasil_and=$(( x & y ))
echo "$x & $y = $hasil_and"  # Output: 1 (dalam biner: 0001)

# Operasi Bitwise OR
hasil_or=$(( x | y ))
echo "$x | $y = $hasil_or"  # Output: 7 (dalam biner: 0111)

# Operasi Bitwise XOR
hasil_xor=$(( x ^ y ))
echo "$x ^ $y = $hasil_xor"  # Output: 6 (dalam biner: 0110)

# Operasi Bitwise NOT (komplemen)
hasil_not=$(( ~x ))
echo "~$x = $hasil_not"  # Output: -6 (representasi biner dalam dua komplen)

# Left shift (geser kiri)
hasil_left_shift=$(( x << 2 ))
echo "$x << 2 = $hasil_left_shift"  # Output: 20 (dalam biner: 10100)

# Right shift (geser kanan)
hasil_right_shift=$(( x >> 2 ))
echo "$x >> 2 = $hasil_right_shift"  # Output: 1 (dalam biner: 0001)
