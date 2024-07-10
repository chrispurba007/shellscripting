#!/bin/bash

# Memantau log aktivitas pengguna secara real-time
echo "Memantau log aktivitas pengguna (tekan Ctrl+C untuk keluar):"
tail -f /var/log/user_activity.log &

# Menunggu sedikit waktu agar tail -f berjalan sebelum melanjutkan
sleep 2

# Mencari aktivitas login dalam log
echo "Mencari aktivitas login pengguna:"
grep "login" /var/log/user_activity.log

# Menyimpan hasil pencarian ke dalam file
hasil_file="login_activities.txt"
echo "Menyimpan hasil pencarian ke dalam file $hasil_file"
grep "login" /var/log/user_activity.log > $hasil_file

# Menampilkan riwayat perintah yang telah dieksekusi
echo "Riwayat perintah terakhir:"
history
