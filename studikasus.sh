#!/bin/bash

read -p "Enter a file or directory: " a

# -a FILE: True if file exists
echo "-a operator test:"
if [ -a "$a" ]; then
   echo "$a exists"
else
   echo "$a does not exist"
fi
echo ""

# -b FILE: True if file is block special
echo "-b operator test:"
if [ -b "$a" ]; then
   echo "$a adalah sebuah block special file"
else
   echo "$a bukan sebuah block special file"
fi
echo ""

# -c FILE: True if file is character special
echo "-c operator test:"
if [ -c "$a" ]; then
   echo "$a adalah sebuah character special file"
else
   echo "$a bukan sebuah character special file"
fi
echo ""

# -d FILE: True if file is a directory
echo "-d operator test:"
if [ -d "$a" ]; then
   echo "$a adalah sebuah directory"
else
   echo "$a bukan sebuah directory"
fi
echo ""

# -e FILE: True if file exists
echo "-e operator test:"
if [ -e "$a" ]; then
   echo "$a exists"
else
   echo "$a does not exist"
fi
echo ""

# -f FILE: True if file exists and is a regular file
echo "-f operator test:"
if [ -f "$a" ]; then
   echo "$a adalah sebuah regular file"
else
   echo "$a bukan sebuah regular file"
fi
echo ""

# -g FILE: True if file is set-group-id
# -h FILE: True if file is a symbolic link
# -L FILE: True if file is a symbolic link
echo "-g, -h, -L operators test:"
if [ -g "$a" ]; then
   echo "$a adalah set-group-id"
else
   echo "$a bukan set-group-id"
fi
if [ -h "$a" ]; then
   echo "$a adalah sebuah symbolic link"
else
   echo "$a bukan sebuah symbolic link"
fi
if [ -L "$a" ]; then
   echo "$a adalah sebuah symbolic link"
else
   echo "$a bukan sebuah symbolic link"
fi
echo ""

# -k FILE: True if file has its 'sticky' bit set
# -p FILE: True if file is a named pipe
echo "-k, -p operators test:"
if [ -k "$a" ]; then
   echo "$a memiliki sticky bit yang diset"
else
   echo "$a tidak memiliki sticky bit yang diset"
fi
if [ -p "$a" ]; then
   echo "$a adalah sebuah named pipe"
else
   echo "$a bukan sebuah named pipe"
fi
echo ""

# -r FILE: True if file is readable by you
# -s FILE: True if file exists and is not empty
# -w FILE: True if the file is writable by you
echo "-r, -s, -w operators test:"
if [ -r "$a" ]; then
   echo "$a dapat dibaca oleh Anda"
else
   echo "$a tidak dapat dibaca oleh Anda"
fi
if [ -s "$a" ]; then
   echo "$a exists and is not empty"
else
   echo "$a exists and is empty"
fi
if [ -w "$a" ]; then
   echo "$a dapat ditulis oleh Anda"
else
   echo "$a tidak dapat ditulis oleh Anda"
fi
echo ""

# -S FILE: True if file is a socket
echo "-S operator test:"
if [ -S "$a" ]; then
   echo "$a adalah sebuah socket file"
else
   echo "$a bukan sebuah socket file"
fi
echo ""

# -t FD: True if FD is opened on a terminal
echo "-t operator test:"
if [ -t 0 ]; then
   echo "Standard input adalah sebuah terminal"
else
   echo "Standard input bukan sebuah terminal"
fi
echo ""

# -u FILE: True if the file is set-user-id
# -x FILE: True if the file is executable by you
echo "-u, -x operators test:"
if [ -u "$a" ]; then
   echo "$a adalah set-user-id"
else
   echo "$a bukan set-user-id"
fi
if [ -x "$a" ]; then
   echo "$a dapat dieksekusi oleh Anda"
else
   echo "$a tidak dapat dieksekusi oleh Anda"
fi
echo ""

# -O FILE: True if the file is effectively owned by you
# -G FILE: True if the file is effectively owned by your group
echo "-O, -G operators test:"
if [ -O "$a" ]; then
   echo "$a secara efektif dimiliki oleh Anda"
else
   echo "$a secara efektif tidak dimiliki oleh Anda"
fi
if [ -G "$a" ]; then
   echo "$a secara efektif dimiliki oleh grup Anda"
else
   echo "$a secara efektif tidak dimiliki oleh grup Anda"
fi
echo ""

# -N FILE: True if the file has been modified since it was last read
echo "-N operator test:"
if [ -N "$a" ]; then
   echo "$a telah dimodifikasi sejak terakhir kali dibaca"
else
   echo "$a tidak dimodifikasi sejak terakhir kali dibaca"
fi

# -v VAR: True if the variable VAR is set
my_var="hello"
if [ -v my_var ]; then
    echo "Variabel my_var diatur"
fi
unset my_var

# -R VAR: True if the variable VAR is set and is name reference
my_ref="another_var"
another_var="world"
if [ -R my_ref ]; then
    echo "Variabel my_ref merupakan referensi nama"
fi

# ! EXPR: True if expr if false
if [ ! -d "/tmp" ]; then
    echo "Direktori /tmp tidak ada"
fi
