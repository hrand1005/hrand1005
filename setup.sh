# useful setup and installation steps
echo "\nupdate and upgrade"
apt update
apt upgrade 

echo "\nInstall and setup vim..."
apt-get -y install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc $HOME/.vimrc
vim +'PlugInstall -sync' +qa
vim +'source ~/.vimrc' +qa

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

echo "\nInstalling go version 18.2"
wget -c https://golang.org/dl/go1.18.2.linux-amd64.tar.gz
chmod +x go1.18.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin">>$HOME/.profile
rm go1.18.2.linux-amd64.tar.gz

echo "\nInstalling build-essential"
apt install --reinstall build-essential

echo "\nInstalling i3"
apt-get -y install i3

echo "\nInstalling feh"
apt install feh -y

echo "\nMapping caps-lock to escape"
echo "export PATH=$PATH:/usr/local/go/bin">>$HOME/.profile
setxkbmap -layout us -option caps:escape

echo "\nSource .profile"
source $HOME/.profile
