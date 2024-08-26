echo "Download ngrok"
wget -q https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar -xvzf ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
chmod +x ngrok
./ngrok authtoken 2lCXHQqSIvweoqdQ8S9AfpRBsqs_5DPnw8vv6JZaMGz52N8H
./ngrok http 5800 >/dev/null 2>&1 >/dev/null &
docker run -d --name=chromium1 -p 5800:5800 -v /docker/appdata/chromium1:/config:rw --shm-size 5g overclockedllama/docker-chromium
sleep 2
sudo ss -ltnp
