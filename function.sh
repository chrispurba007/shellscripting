#!/bin/bash

function welcome {
	echo "Selamat datang, $1"
	echo "Nama host: $HOSTNAME"
	echo "Lokasi host: $HOME"
}

welcome "Chris"

echo "Masukkan nama file yang ingin anda cari:"
read filename

if [ -f $filename ]; then
	echo "File $filename ditemukan"
	echo "Masukkan kata yang ingin dicari dalam file untuk diprint line nya:"
	read kata
	grep "$kata" $filename
else
	echo "File $filename tidak ditemukan"
fi

