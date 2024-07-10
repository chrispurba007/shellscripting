#!/bin/bash

# 1.If-else
echo "---- NORMAL IF-ELSE ----"
echo "Enter a number:"
read num1

if [ $num1 -gt 0 ]; then
    echo "The number is positive."
elif [ $num1 -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is zero."
fi

# 2.Shorthand if & if-else
echo "---- SHORTHAND IF-ELSE ----"
echo "Echo second number:"
read num2

if [ $num1 -gt $num2 ]; then echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]; then echo "$num1 is less than $Num2"
else echo "The numbers are equal" 
fi

[ $num1 -gt $num2 ] && echo "$num1 is greater than $num2" || { [ $num1 -lt $num2 ] && echo "$num1 is less than $num2" || echo "The numbers are equal"; }

# 3.And, Or and Not
echo "---- AND, OR AND NOT ----"

# AND
[ $num1 -gt 0 ] && [ $num2 -gt 0 ] && echo "$num1 and $num2 are both positive"
# OR
[ $num1 -lt 0 ] || [ $num2 -lt 0 ] && echo "At least one of $num1 or $num2 is negative"
# NOT example
[ ! $num1 -eq 0 ] && echo "$num1 is not zero"

# 4. Nested If statement
echo "---- NESTED IF STATEMENT ----"
echo "Enter a third number:"
read num3

if [ $num3 -gt $num2 ]; then
    if [ $num3 -gt $num1 ]; then
        echo "$num3 is greater than both $num1 and $num2"
    else
        echo "$num3 is greater than $num2 but not greater than $num1"
    fi
else
    echo "$num3 is not greater than $num2"
fi

# 5. Pass 
echo "---- PASS ----"

echo "Enter a fourth number:"
read num4

if [ $num4 -eq 0 ]; then
    : # pass
else
    echo "The fourth number is not zero."
fi