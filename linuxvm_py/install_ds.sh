#!/bin/bash
sudo apt-get update
#install gnome desktop
#sudo apt-get install ubuntu-desktop -y
#install xrdp
#reference: https://buildazure.com/2018/02/28/how-to-setup-an-ubuntu-linux-vm-in-azure-with-remote-desktop-rdp-access/

sudo apt-get install lxde -y
sudo apt-get install xrdp -y
sudo /etc/init.d/xrdp start

cd ~
wget -c https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh
bash Anaconda3-4.3.1-Linux-x86_64.sh -b -p ~/anaconda 
# rm Anaconda3-4.3.1-Linux-x86_64.sh 

echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.bashrc 

# Refresh basically
source .bashrc

# conda update conda

 
