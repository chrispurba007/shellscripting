#!/bin/bash
echo "Insert your name"
read name
echo "Insert your age"
read age

echo "Hello $name!, you are $age years old!"

echo "Calculating"
echo ".........."
sleep 1
echo ".........."
sleep 1

getrich=$((( $RANDOM % 15 ) + $age))

echo "$name, you will become a millionaire when you are $getrich years old"
