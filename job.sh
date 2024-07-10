#!/bin/bash

# Meminta pengguna untuk memasukkan nama kedua file teks
echo "Masukkan nama file teks pertama:"
read file1

echo "Masukkan nama file teks kedua:"
read file2

# Menjalankan perhitungan jumlah kata dalam file pertama
echo "Menghitung jumlah kata dalam $file1"
cat "$file1" | wc -w > jumlah_kata_file1.txt &
pid1=$!  # Menyimpan PID dari proses pertama

# Menjalankan perhitungan jumlah kata dalam file kedua
echo "Menghitung jumlah kata dalam $file2"
cat "$file2" | wc -w > jumlah_kata_file2.txt &
pid2=$!  # Menyimpan PID dari proses kedua

# Menunggu kedua proses selesai
wait $pid1
wait $pid2

# Menggabungkan jumlah kata dari kedua file
total_kata=$(($(cat jumlah_kata_file1.txt) + $(cat jumlah_kata_file2.txt)))

echo "Proses selesai."
echo "Jumlah kata dari $file1 adalah: $(cat jumlah_kata_file1.txt)"
echo "Jumlah kata dari $file2 adalah: $(cat jumlah_kata_file2.txt)"
echo "Jumlah kata keseluruhan dari kedua file adalah: $total_kata"

# Membersihkan file hasil sementara
rm jumlah_kata_file1.txt jumlah_kata_file2.txt
