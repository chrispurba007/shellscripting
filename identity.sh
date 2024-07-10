#!/bin/bash

# Define two variables with the same value
x="hello"
y="hello"
z="world"

# Check if x and y have the same value
if [ "$x" = "$y" ]; then
  echo "x and y have the same value"
else
  echo "x and y do not have the same value"
fi

# Check if x and z have the same value
if [ "$x" = "$z" ]; then
  echo "x and z have the same value"
else
  echo "x and z do not have the same value"
fi

# Check if x and y do not have the same value
if [ "$x" != "$y" ]; then
  echo "x and y do not have the same value"
else
  echo "x and y have the same value"
fi
