#!/bin/bash

# Nama program Flask
program_name="flask"

# Mencari semua PID dari program yang dicari
pids=$(pgrep -f "$program_name")

if [ -z "$pids" ]; then
    echo "Tidak ada $program_name yang berjalan"
else
    echo "Process ID dari $program_name adalah: $pids"
    
    for pid in $pids; do
        # Mencari port yang digunakan oleh program yang ditemukan
        port=$(lsof -i -a -p $pid | awk 'NR==2 {print $9}')
        lsof -i -a -p $pid
        kill -9 $pid
        echo "$program_name pada port $port dengan PID $pid telah dimatikan"
    done
fi
