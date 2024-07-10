#!/bin/bash

#Identitas pengguna
username="Chris"
age=20
height=1,75

# Mencetak informasi pengguna dengan format yang sesuai
printf "Nama pengguna: %s\n" "$username"
printf "Usia pengguna: %d tahun\n" "$age"
printf "Tinggi pengguna: %.2f meter\n" "$height"

# Variabel lain untuk menunjukkan penggunaan lebih lanjut
book_title="Atomic Habits"
price=10

# Mencetak informasi buku dengan format yang sesuai
printf "Judul buku: %s\n" "$book_title"
printf "Harga buku: %d dolar\n" "$price"

