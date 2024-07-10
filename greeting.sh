#!/bin/sh

user=$(whoami)
date=$(date)
place=$(pwd)

echo "Greetings!"
sleep 1
echo "- You are currently logged in as $user"
sleep 1
echo "- You current directory position is $place"
sleep 1
echo "- Recorded as of: $date"

