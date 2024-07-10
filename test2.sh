#!/bin/sh

a=$1
b=$2

jumlah=$((a+b))
kurang=$((a-b))
kali=$((a*b))
bagi=$((a/b))
modulus=$((a%b))

echo "Hasil Penjumlahan $a dan $b adalah $jumlah"
echo "Hasil Pengurangan $a dan $b adalah $kurang"
echo "Hasil Perkalian $a dan $b adalah $kali"
echo "Hasil Pembagian $a dan $b adalah $bagi"
echo "Hasil Modulus(Sisa Pembagian) $a dan $b adalah $modulus"
