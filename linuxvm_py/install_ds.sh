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

#workaround for bug preventing vscode from running in xdrp/remote session
cd /usr/lib/x86_64-linux-gnu
sudo tar -cvf vscodehack.tar libxcbso*
sudo sed -i 's/BIG-REQUESTS/_IG-REQUESTS/' /usr/lib/x86_64-linux-gnu/libxcb.so.1
sudo sed -i 's/BIG-REQUESTS/_IG-REQUESTS/' /usr/lib/x86_64-linux-gnu/libxcb.so.1.1.0
sudo cp libxcbso* /usr/share/code

# install anaconda
sudo wget https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh -O /anaconda.sh

bash /anaconda.sh -b -p /home/joben/anaconda3
rm /anaconda.sh

export PATH="/home/joben/anaconda3/bin:$PATH"

#echo 'export PATH="$HOME/anaconda/bin:$PATH"' >> ~/.bashrc 

pip install --upgrade pip
pip install BeautifulSoup4
pip install html5lib==1.0b8
pip install plyfile

conda update conda

# get dat210x repo
cd /home/joben && mkdir repo && cd repo
git clone https://github.com/authman/DAT210x.git


 
