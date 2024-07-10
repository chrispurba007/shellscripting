#!/bin/bash

echo "Masukkan file pertama"
read a
echo "Masukkan file kedua"
read b

#EXPR1 -a EXPR2 True if both expr1 and expr2 are true
if [ -r $a -a -r $b ]; then
	echo "Kedua file dapat dibaca oleh anda."
else
	echo "Salah satu atau kedua file tidak dapat dibaca oleh anda."
fi

#EXPR1 -o EXPR2 True if either expr1 or expr2 are true
if [ -r $a -o -r $b ]; then
        echo "Setidaknya salah satu file dapat dibaca oleh anda."
else
        echo "Kedua file tidak dapat dibaca oleh anda."
fi


# nt=newer than, -ot= older than, -ef= hard link
if [ $a -nt $b ]; then
	echo "File $a lebih baru daripada file $b"
elif [ $a -ot $b ]; then
	echo "File $a lebih lama daripada file $b"
elif [$a -ef $b ]; then
	echo "File $a adalah hard link ke file $b"
fi


echo "Masukkan angka 1"
read num1

echo "Masukkan angka 2"
read num2

if [ $num1 -eq $num2 ]; then
    echo "$num1 sama dengan $num2"
fi

if [ $num1 -ne $num2 ]; then
    echo "$num1 tidak sama dengan $num2"
fi

if [ $num1 -lt $num2 ]; then
    echo "$num1 kurang dari $num2"
fi

if [ $num1 -le $num2 ]; then
    echo "$num1 kurang dari atau sama dengan $num2"
fi

if [ $num1 -gt $num2 ]; then
    echo "$num1 lebih besar dari $num2"
fi

if [ $num1 -ge $num2 ]; then
    echo "$num1 lebih besar dari atau sama dengan $num2"
fi
