#!/bin/bash

# Meminta pengguna untuk memasukkan kata yang ingin dicari
echo "Masukkan kata yang ingin Anda hitung kemunculannya dalam teks:"
read target_kata
echo "Masukkan nama file txt"
read txt


# Jika tidak ada kata yang dimasukkan, keluarkan pesan error
if [ -z "$target_kata" ]; then
    echo "Error: Anda harus memasukkan kata yang ingin dihitung kemunculannya."
    exit 1
fi

# Lakukan pencarian kata dan hitung jumlah kemunculannya
jumlah_kemunculan=$(grep -o "$target_kata" $txt | wc -l)

# Simpan hasil ke dalam file output
echo "Jumlah kemunculan kata '$target_kata' adalah: $jumlah_kemunculan" > hasilkata.txt

echo "Hasil telah disimpan dalam file 'hasilkata.txt'."
