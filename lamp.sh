cd /tmp
wget -O installlamp https://raw.githubusercontent.com/arbabnazar/Automated-LAMP-Installation/master/install.sh
wget -O virtualhost https://raw.githubusercontent.com/RoverWire/virtualhost/master/virtualhost.sh
chmod +x virtualhost
chmod +x installlamp
cp -r virtualhost /usr/local/bin/
cp -r installlamp /usr/local/bin/
ln /usr/local/bin/virtualhost /usr/local/bin/vh
ln /usr/local/bin/installlamp /usr/local/bin/il
