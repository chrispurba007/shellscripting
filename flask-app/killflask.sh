#!/bin/bash

program_name=$1

# Mencari PID dari program yang dicari
pid=$(pgrep -f "$program_name" | head -n 1)
echo "Process id $program_name adalah $pid"

if [ -z "$pid" ]; then
    echo "Tidak ada $program_name yang berjalan"
else
    # Mencari port yang digunakan oleh program yang ditemukan
    port=$(lsof -i -a -p $pid | awk 'NR==2 {print $9}')
    lsof -i -a -p $pid
    kill -9 $pid
    echo "$program_name pada port $port telah dimatikan"
fi
