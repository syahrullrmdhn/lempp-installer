#!/bin/bash

# Skrip installer LEMP otomatis
# Dibuat oleh: Syahrul Ramadhan
# Website: syahrulramadhan.id

# Fungsi untuk menampilkan pesan selamat datang
function welcome {
    echo "Selamat datang di installer LEMP otomatis!"
    echo "Skrip ini akan menginstal Nginx, MySQL, dan PHP."
    echo "Dibuat oleh: Syahrul Ramadhan"
    echo "Website: syahrulramadhan.id"
}

# Fungsi untuk menginstal Nginx
function install_nginx {
    echo "Menginstal Nginx..."
    sudo apt install nginx -y  # Sesuaikan dengan paket manager Anda
    # Konfigurasi tambahan jika diperlukan
}

# Fungsi untuk menginstal MySQL
function install_mysql {
    echo "Menginstal MySQL..."
    sudo apt install mysql-server -y  # Sesuaikan dengan paket manager Anda
    # Konfigurasi keamanan awal MySQL
    sudo mysql_secure_installation
}

# Fungsi untuk menginstal PHP
function install_php {
    echo "Menginstal PHP..."
    sudo apt install php libnginx-mod-php -y  # Sesuaikan dengan paket manager Anda
    # Instalasi ekstensi PHP tambahan jika diperlukan
}

# Fungsi utama
main() {
    welcome
    install_nginx
    install_mysql
    install_php
    echo "Instalasi LEMP selesai!"
}

# Panggil fungsi utama
main