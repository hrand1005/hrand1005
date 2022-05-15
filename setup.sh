# useful setup and installation steps
echo "\nupdate and upgrade"
apt update
apt upgrade 

echo "\nInstalling vim..."
apt-get -y install vim

echo "\nInstalling git..."
apt-get -y install git

echo "\nInstalling vscode..."
apt-get -y install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
apt-get -y install apt-transport-https
apt update
apt-get -y install code
