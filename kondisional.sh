#!/bin/bash

echo "Masukkan total pendapatan anda bulan ini:"
read in

echo "Masukkan total pengeluaran anda bulan ini:"
read out

if [ $in -gt $out ]; then
	echo "Saldo tabungan Anda surplus senilai $((in - out))"
elif  [ $in -lt $out ]; then
	echo "Saldo tabungan Anda defisit senilai $((in - out))"
elif [ $1 -eq $2 ]; then
    echo "Saldo tabungan Anda tidak berubah."
fi

