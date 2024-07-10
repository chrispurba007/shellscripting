#!/bin/bash

# Initialize a variable
x=5
echo "Initial value of x: $x"

# Assignment operators
echo "Assignment (x = 5):"
x=5
echo "x = $x"

echo "Addition assignment (x += 3):"
(( x += 3 ))
echo "x = $x"

echo "Subtraction assignment (x -= 3):"
(( x -= 3 ))
echo "x = $x"

echo "Multiplication assignment (x *= 3):"
(( x *= 3 ))
echo "x = $x"

echo "Division assignment (x /= 3):"
(( x /= 3 ))
echo "x = $x"

echo "Modulus assignment (x %= 3):"
(( x %= 3 ))
echo "x = $x"

echo "Floor division assignment (x //= 3):"
(( x //= 3 ))
echo "x = $x"

echo "Exponentiation assignment (x **= 3):"
(( x **= 3 ))
echo "x = $x"

x=5
echo "Bitwise AND assignment (x &= 3):"
(( x &= 3 ))
echo "x = $x"
x=5
echo "Bitwise OR assignment (x |= 3):"
(( x |= 3 ))
echo "x = $x"
x=5
echo "Bitwise XOR assignment (x ^= 3):"
(( x ^= 3 ))
echo "x = $x"
x=5
echo "Bitwise right shift assignment (x >>= 1):"
(( x >>= 1 ))
echo "x = $x"
x=5
echo "Bitwise left shift assignment (x <<= 1):"
(( x <<= 1 ))
echo "x = $x"
