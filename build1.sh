echo "Download ngrok"
wget -q https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar -xvzf ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
chmod +x ngrok
./ngrok authtoken 2lCXHQqSIvweoqdQ8S9AfpRBsqs_5DPnw8vv6JZaMGz52N8H
./ngrok http 6080 >/dev/null 2>&1 >/dev/null &
mkdir /dev/shm
docker run -d -p 6080:80 -v /dev/shm:/dev/shm wenoptics/ubuntu-desktop-novnc
sleep 2
sudo ss -ltnp
