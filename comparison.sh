#!/bin/bash

# Define two numbers for comparison
x=$1
y=$2

# Equal
if [ $x -eq $y ]; then
  echo "$x is equal to $y"
else
  echo "$x is not equal to $y"
fi

# Not equal
if [ $x -ne $y ]; then
  echo "$x is not equal to $y"
else
  echo "$x is equal to $y"
fi

# Greater than
if [ $x -gt $y ]; then
  echo "$x is greater than $y"
else
  echo "$x is not greater than $y"
fi

# Less than
if [ $x -lt $y ]; then
  echo "$x is less than $y"
else
  echo "$x is not less than $y"
fi

# Greater than or equal to
if [ $x -ge $y ]; then
  echo "$x is greater than or equal to $y"
else
  echo "$x is not greater than or equal to $y"
fi

# Less than or equal to
if [ $x -le $y ]; then
  echo "$x is less than or equal to $y"
else
  echo "$x is not less than or equal to $y"
fi
