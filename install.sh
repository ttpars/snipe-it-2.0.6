# ensure running as root
if [ "$(id -u)" != "0" ]; then
  exec sudo "$0" "$@"
fi
wget https://raw.githubusercontent.com/ttpars/snipe-it-2.0.6/master/snipeit.sh
chmod 744 snipeit.sh
sudo ./snipeit.sh 2>&1 | sudo tee -a /var/log/snipeit-install.log