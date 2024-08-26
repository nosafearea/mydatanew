echo "Download ngrok"
wget -q https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar -xvzf ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
chmod +x ngrok
./ngrok authtoken 2R0n3Bb23N0iVSOMhAACIG0HWqY_5zacqzwzoybyWaYxPHLrj
./ngrok tcp 3389 >/dev/null 2>&1 >/dev/null &
docker run -d --name rdp -p 3389:3389 danielguerra/alpine-xrdp-dind
sudo ss -ltnp
