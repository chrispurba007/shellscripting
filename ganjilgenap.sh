echo "Masukkan angka: "
read angka

if [ $((angka % 2)) -eq 1 ]; then
    echo "$angka adalah bilangan ganjil"
else
    echo "$angka adalah bilangan genap"
fi

if [ $angka -le 1 ]; then
    echo "$angka bukan bilangan prima"
else
    prima=true
    for (( i=2; i <= $(($angka/2)); i++ )); do
        if (( $angka % i == 0 )); then
            prima=false
            break
        fi
    done
    if [ $prima == true ]; then
        echo "$angka adalah bilangan prima"
    else
        echo "$angka bukan bilangan prima"
    fi
fi
