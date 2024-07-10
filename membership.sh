#!/bin/bash

# Define a string
text="halo dunia"

# Define a substring to search for
substring="hello"

# Check if substring is in text
if [[ "$text" == *"$substring"* ]]; then
  echo "'$substring' is in '$text'"
else
  echo "'$substring' is not in '$text'"
fi

# Define an array
arr=("apple" "banana" "cherry")

# Define a value to search for
value="banana"

# Check if value is in array
found=false
for item in "${arr[@]}"; do
  if [[ "$item" == "$value" ]]; then
    found=true
    break
  fi
done

if $found; then
  echo "'$value' is in the array"
else
  echo "'$value' is not in the array"
fi
