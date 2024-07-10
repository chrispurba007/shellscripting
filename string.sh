#!/bin/bash

echo "Masukkan sebuah string: "
read str

# -z STRING: True if string is empty
echo "-z operator test:"
if [ -z "$str" ]; then
   echo "String tersebut kosong"
else
   echo "String tersebut tidak kosong"
fi
echo ""

# -n STRING: True if string is not empty
echo "-n operator test:"
if [ -n "$str" ]; then
   echo "String tersebut tidak kosong"
else
   echo "String tersebut kosong"
fi
echo ""

read -p "Masukkan string lain: " str2

# STRING1 = STRING2: True if the strings are equal
echo "String equality test:"
if [ "$str" = "$str2" ]; then
   echo "String-string tersebut sama"
else
   echo "String-string tersebut tidak sama"
fi
echo ""

# STRING1 != STRING2: True if the strings are not equal
echo "String inequality test:"
if [ "$str" != "$str2" ]; then
   echo "String-string tersebut tidak sama"
else
   echo "String-string tersebut sama"
fi
echo ""

# STRING1 < STRING2: True if STRING1 sorts before STRING2 lexicographically
echo "String lexicographic order test:"
if [ "$str" \< "$str2" ]; then
   echo "$str diurutkan sebelum $str2"
else
   echo "$str tidak diurutkan sebelum $str2"
fi
echo ""

# STRING1 > STRING2: True if STRING1 sorts after STRING2 lexicographically
echo "String reverse lexicographic order test:"
if [ "$str" \> "$str2" ]; then
   echo "$str diurutkan setelah $str2"
else
   echo "$str tidak diurutkan setelah $str2"
fi

