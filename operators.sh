#!/bin/bash

# Define two variables
x=$1
y=$2

# Arithmetic Operators
echo "x=$x, y=$y"
echo "Addition (x + y): $((x + y))"
echo "Subtraction (x - y): $((x - y))"
echo "Multiplication (x * y): $((x * y))"
echo "Floor Division (x / y): $((x / y))"
echo "Modulus (x % y): $((x % y))"
echo "Exponentiation (x ** y): $((x ** y))"
float=$(echo "scale=2; $x / $y" | bc)
echo "Floating-point Division (x / y): $float"
