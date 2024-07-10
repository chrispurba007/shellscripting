#!/bin/bash

var=1
while [[ $var -eq 1 ]]; do
    echo "Masukkan nama file yang ingin dicari:"
    read file

    if [ -f $file ]; then
        echo "-- File $file ditemukan --"
        echo "Masukkan kata-kata yang ingin dicari dalam file teks:"
        read -a kata_array #-a berarti input akan dibaca sebagai sebuah array & disimpan dlm var kata_array
        
        #melakukan loop untuk setiap elemen dalam kata_array dengan @
        for kata in "${kata_array[@]}"; do
            # Mencari kata dalam file yang dimasukkan
            echo "-- Mencari untuk kata: $kata --"
            grep "$kata" $file

            # Variabel $? menyimpan exit status dari command yg terakhir kali dilakukan
            # Bila variabel $? bernilai 0 maka command sukses diexecute
            if [ $? -eq 0 ]; then
                echo "-- Kata $kata ditemukan dalam file $file --"
            else
                echo "-- Kata $kata tidak ditemukan dalam file $file --"
            fi
        done
    else
        echo "-- File tidak ditemukan. --"
    fi

    echo "Input angka 1 untuk kembali ke menu atau masukkan karakter apapun untuk keluar"
    read var
done
