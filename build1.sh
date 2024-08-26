echo "Download ngrok"
wget -q https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar -xvzf ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
chmod +x ngrok
./ngrok authtoken 2lCXHQqSIvweoqdQ8S9AfpRBsqs_5DPnw8vv6JZaMGz52N8H
./ngrok tcp 3330 >/dev/null 2>&1 >/dev/null &
docker run -d --name rdp --shm-size 5g -p 3330:3389 danielguerra/alpine-xfce4-xrdp
sleep 2
sudo ss -ltnp
