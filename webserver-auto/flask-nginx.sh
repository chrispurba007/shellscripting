#!/bin/bash

#pengecekan jika ada parameter kosong
if [[ -z "$1" || -z "$2" || -z "$3" ]]; then
    echo "Ada parameter yang kosong. Usage: ./flask-nginx.sh <file flask> <port> <app name>"
    exit 1
fi

#update package list
sudo apt update

#region Instalasi Python & Nginx
sudo apt install -y python3 python3-pip python3-venv nginx

#assign positional parameter ke variabel
fileflask="$1"
port="$2"
app="$3"

#create dan activate virtual environment
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install Flask
echo "Proses Instalasi Selesai"

#endregion

#isi code file flask .py
nano "$fileflask"

#run di background dengan nohup (no hang up)
nohup python3 "$fileflask" &


#mengisi config untuk /etc/nginx/sites-available/
sudo bash -c "cat > /etc/nginx/sites-available/$app <<EOF
server {
    listen 80;
    server_name 127.0.0.1;  # Change to your domain if applicable

    location /hello {
        proxy_pass http://127.0.0.1:$port;
    }
}
EOF"

#pengecekan apabila app sudah ada maka yang lama dihapus untuk diupdate
if [ -e "/etc/nginx/sites-enabled/$app" ]; then
    sudo rm /etc/nginx/sites-enabled/$app
fi

#link sites available app ke sites-enabled
sudo ln -s /etc/nginx/sites-available/$app /etc/nginx/sites-enabled/

sudo systemctl start nginx
sudo systemctl status nginx

#test Nginx configuration
sudo nginx -t

#reload untuk apply changes
sudo systemctl reload nginx

echo "Setup selesai. App anda dapat diakses via http://127.0.0.1/$app"
