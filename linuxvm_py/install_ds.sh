#!/bin/bash
sudo apt-get update
#install gnome desktop
#sudo apt-get install ubuntu-desktop -y
#install xrdp
#reference: https://buildazure.com/2018/02/28/how-to-setup-an-ubuntu-linux-vm-in-azure-with-remote-desktop-rdp-access/

# install remote desktop
sudo apt-get install lxde -y
sudo apt-get install xrdp -y
sudo /etc/init.d/xrdp start

# install vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code # or code-insiders

# install anaconda
sudo wget -C https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh

#bash ~/anaconda.sh -b -p $HOME/anaconda 
#rm ~/anaconda.sh 
#export PATH="$HOME/anaconda/bin:$PATH"

#echo 'export PATH="$HOME/anaconda/bin:$PATH"' >> ~/.bashrc 

# Refresh basically
#source ~/.bashrc

#conda update conda

 
