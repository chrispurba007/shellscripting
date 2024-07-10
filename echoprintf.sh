#!/bin/bash

nama="Christian"
umur=20
pekerjaan="Mahasiswa"

# Menggunakan echo untuk menampilkan informasi pengguna
echo "Informasi Pengguna:"
echo "Nama: $nama"
echo "Umur: $umur"
echo "Pekerjaan: $pekerjaan"
echo

# Menggunakan printf untuk menampilkan informasi pengguna
printf "Informasi Pengguna:\n"
printf "Nama: %s\n" "$nama"
printf "Umur: %d\n" "$umur"
printf "Pekerjaan: %s\n" "$pekerjaan"
