#!/bin/bash

# Pesan sederhana dengan echo
echo "Hello, World!"

# Pesan dengan variabel menggunakan echo
name="Chris"
echo "Hello, $name!"
# Pesan terformat dengan printf
printf "Hello, %s!\n" "$name"

# Multiline dengan echo
echo -e "Line 1\nLine 2\nLine 3"
# Multiline dengan printf
printf "Line 1\nLine 2\nLine 3\n"

# Kutipan khusus dengan echo
echo 'This is a single quote: '\'' and this is a double quote: "'
# Kutipan khusus dengan printf
printf "This is a single quote: ' and this is a double quote: \"\n"

# Format angka dengan echo dan printf
value=3,14159
echo "Value is $value"
printf "Formatted value is %.2f\n" "$value"
