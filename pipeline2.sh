#!/bin/bash

# Menggunakan perintah cat untuk membaca isi file requirements.txt
# Menggunakan perintah grep untuk mencari paket yang diinginkan
# Menggunakan perintah awk untuk memformat output
# Menggunakan perintah sort untuk mengurutkan hasil pencarian
# Menggunakan perintah uniq untuk menghapus baris yang duplikat
# Menyimpan hasilnya dalam file hasil_pencarian.txt

echo "Masukkan paket yang ingin dicari"
read paket
cat requirements.txt | grep $paket | awk '{$1=$1};1' | sort | uniq > hasil_pencarian.txt

echo "Pencarian selesai. Hasilnya disimpan dalam file hasil_pencarian.txt"
