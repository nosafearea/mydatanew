echo "Download ngrok"
wget -q https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar -xvzf ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
chmod +x ngrok
./ngrok authtoken 2S2Kt8rn1wqdDWbEQDpn3rdYcvV_5ygfkt7w88rYEfGjjtGG7
./ngrok tcp 3389 >/dev/null 2>&1 >/dev/null &
echo 'debconf debconf/frontend select Noninteractive' | sudo debconf-set-selections >/dev/null 2>&1
sudo apt-get install -y -q
sudo ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime >/dev/null 2>&1
sudo dpkg-reconfigure -f noninteractive tzdata >/dev/null 2>&1
sudo apt update -y >/dev/null 2>&1
sudo apt-get install libgconf2-4 libnss3-1d libxss1 -y >/dev/null 2>&1
sudo apt install python3 python3-dev python3-venv python3-pip screen nano -y >/dev/null 2>&1
pip install chromedriver-binary==110.0.5481.77 >/dev/null 2>&1
pip install selenium >/dev/null 2>&1
useradd -m kune >/dev/null 2>&1
adduser kune sudo >/dev/null 2>&1
echo 'kune:kune' | sudo chpasswd
sudo apt-get update -y > /dev/null 2>&1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg --install google-chrome-stable_current_amd64.deb > /dev/null 2>&1
wget -q -O tes.deb https://github.com/robiot/xclicker/releases/download/v1.4.0/xclicker_1.4.0_amd64.deb && dpkg -i tes.deb > /dev/null 2>&1
sudo apt install --assume-yes --fix-broken > /dev/null 2>&1
wget -q https://gitlab.com/mailzakode/ku/-/raw/main/tools/anticaptcha-plugin_v0.62.zip -O /home/kune/anticaptcha-plugin_v0.62.zip && cd /home/kune && unzip -q anticaptcha-plugin_v0.62.zip && wget -q https://bitbucket.org/kunebsmteam/satu/downloads/kune.zip && unzip -q kune.zip && chmod +x a
wget -q https://gitlab.com/mailzakode/ku/-/raw/main/tools/ext.sh -O /home/kune/ext.sh && cd /home/kune && sudo sh ext.sh > /dev/null 2>&1
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install lxde -y > /dev/null 2>&1
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install --assume-yes xfce4 desktop-base xfce4-terminal > /dev/null 2>&1
echo "===================================="
echo "Start RDP"
echo "===================================="
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
#sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
sleep 3
sudo ss -ltnp
