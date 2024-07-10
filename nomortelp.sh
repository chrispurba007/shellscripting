#!/bin/bash

# Menyaring nomor telepon yang dimulai dengan kode area "123" menggunakan grep
filtered_numbers=$(grep "^.* 123-" contacts.txt)

# Menyaring hanya nomor telepon dari hasil grep menggunakan sed
filtered_numbers=$(echo "$filtered_numbers" | sed 's/.* \([0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}\)/\1/g')

# Menampilkan nomor telepon yang telah difilter menggunakan awk
echo "$filtered_numbers" | awk '{print "Nomor telepon: " $0}'
