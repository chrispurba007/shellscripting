#!/bin/bash

# Buat sebuah direktori untuk menyimpan file teks dan pindah ke dalamnya
mkdir files && cd files

# Buat beberapa file teks dengan teks acak
echo "Ini adalah contoh teks untuk file 1." > file1.txt
echo "Ini adalah contoh teks untuk file 2." > file2.txt
echo "Ini adalah contoh teks untuk file 3." > file3.txt

# Gunakan job control untuk menjalankan proses perhitungan jumlah baris untuk setiap file secara paralel
{ wc -l < file1.txt & pid1=$! ; wc -l < file2.txt & pid2=$! ; wc -l < file3.txt & pid3=$! ; wait $pid1 ; wait $pid2 ; wait $pid3 ; } > hasil_perhitungan.txt

# Tampilkan hasil perhitungan
cat hasil_perhitungan.txt

# Simpan riwayat perintah yang digunakan dalam file history.txt
history > history.txt

# Gunakan filter untuk menampilkan riwayat perintah yang mengandung kata kunci tertentu (misalnya "wc")
grep "wc" history.txt

# Hapus direktori dan file yang telah dibuat
cd .. && rm -r files history.txt
