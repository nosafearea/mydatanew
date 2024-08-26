#!/bin/bash
wget -q https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz >/dev/null 2>&1
tar -xvzf ngrok-v3-stable-linux-amd64.tgz >/dev/null 2>&1
chmod +x ngrok
./ngrok authtoken 2Qyuo1u3hVJfyJ1hNbla2KvKZkS_6We9aFPeTqXZMhmH5WSvm >/dev/null 2>&1
./ngrok tcp 3389 >/dev/null 2>&1 >/dev/null &
useradd -m -s /bin/bash -p $(openssl passwd -1 kune123) kune
adduser kune sudo
apt update -y >/dev/null 2>&1
apt upgrade -y >/dev/null 2>&1
apt install ubuntu-desktop -y >/dev/null 2>&1
apt install ubuntu-gnome-desktop -y >/dev/null 2>&1
apt install xrdp -y >/dev/null 2>&1
service xrdp start >/dev/null 2>&1
sleep 5
