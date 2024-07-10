#!/bin/bash

echo "Masukkan nama file: "
read filename

echo "Masukkan kata yang ingin diganti: "
read kata1

echo "Masukkan kata pengganti: "
read kata2

echo " "
sed -i "s/$kata1/$kata2/g" $filename | cat $filename | grep -E "$kata2" $filename

