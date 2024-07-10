#!/bin/bash

# Define two numbers for comparison
x=$1
y=$2

# and operator
if [ $x -lt 5 ] && [ $y -lt 10 ]; then
  echo "Both conditions are true: $x < 5 and $y < 10"
else
  echo "At least one of the conditions is false"
fi

# or operator
if [ $x -lt 5 ] || [ $y -lt 4 ]; then
  echo "At least one of the conditions is true: $x < 5 or $y < 4"
else
  echo "Both conditions are false"
fi

# not operator
if ! ([ $x -lt 5 ] && [ $y -lt 10 ]); then
  echo "The negation of the condition is true: not($x < 5 and $y < 10)"
else
  echo "The condition is true: $x < 5 and $y < 10"
fi
