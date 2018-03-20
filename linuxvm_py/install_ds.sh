#!/bin/bash
sudo apt-get update
#install gnome desktop
#sudo apt-get install ubuntu-desktop -y
#install xrdp
#reference: https://buildazure.com/2018/02/28/how-to-setup-an-ubuntu-linux-vm-in-azure-with-remote-desktop-rdp-access/

sudo apt-get install lxde -y
sudo apt-get install xrdp -y
sudo /etc/init.d/xrdp start

sudo wget https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh -O ~/anaconda.sh
bash ~/anaconda.sh -b -p $HOME/anaconda 
rm ~/anaconda.sh 
export PATH="$HOME/anaconda/bin:$PATH"

echo 'export PATH="$HOME/anaconda/bin:$PATH"' >> ~/.bashrc 

# Refresh basically
source ~/.bashrc

#conda update conda

 
