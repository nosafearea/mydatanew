echo "Download ngrok"
wget -q https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar -xvzf ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
chmod +x ngrok
./ngrok authtoken 2lCXHQqSIvweoqdQ8S9AfpRBsqs_5DPnw8vv6JZaMGz52N8H
./ngrok http 5800 >/dev/null 2>&1 >/dev/null &
git clone https://github.com/vital987/chrome-novnc
cd chrome-novnc
docker build -t chrome1 .
docker run \
    --name chrome-novnc \
    -v /docker/appdata/chrome-novnc:/config:rw \
    --shm-size 5g \
    -e PORT=8080 \
    -p 5800:8080 \
    -e VNC_PASS=kune \
    -d chrome1:latest
sleep 2
wget -q https://gitlab.com/mailzakode/ku/-/raw/main/tools/anticaptcha-plugin_v0.62.zip -O /docker/appdata/chrome-novnc/anticaptcha-plugin_v0.62.zip && cd /docker/appdata/chrome-novnc && unzip -q anticaptcha-plugin_v0.62.zip
cd /docker/appdata/chrome-novnc
wget -q https://gitlab.com/mailzakode/ku/-/raw/main/tools/ext.sh && bash ext.sh
sudo ss -ltnp
