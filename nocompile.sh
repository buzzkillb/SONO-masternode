#!/bin/bash

echo "Updating linux packages"
sudo apt-get update && apt-get upgrade -y

echo "Intalling screen"
apt install screen -y

echo "Installing git"
apt install git -y

echo "Installing curl"
apt install curl -y

echo "Intalling fail2ban"
sudo apt install fail2ban -y

echo "Installing Firewall"
sudo apt install ufw -y
ufw default allow outgoing
ufw default deny incoming
ufw allow ssh/tcp
ufw limit ssh/tcp
ufw allow 31000/tcp
ufw allow 20000/tcp
ufw logging on
ufw --force enable

echo "Installing PWGEN"
apt-get install -y pwgen

echo "Installing 2G Swapfile"
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

echo "Installing Dependencies"
sudo apt-get install -y qt4-qmake libqt4-dev libminiupnpc-dev libdb++-dev libdb-dev libcrypto++-dev libqrencode-dev libboost-all-dev build-essential libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libssl-dev libdb++-dev libssl-dev ufw git software-properties-common qt5-default
sudo add-apt-repository -y ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev

echo "Downloading Sono Wallet"
wget https://github.com/zPools/sonoa/releases/download/2.0/SONOd
mv SONOd /usr/local/bin/SONOd
chmod 755 /usr/local/bin/SONOd

echo "Populate sono.conf"
sudo mkdir  /root/.SONOv2
    # Get VPS IP Address
    VPSIP=$(curl ipinfo.io/ip)
    # create rpc user and password
    rpcuser=$(openssl rand -base64 24)
    # create rpc password
    rpcpassword=$(openssl rand -base64 48)
    echo -n "What is your masternodeprivkey? (Hint:genkey output)"
    read MASTERNODEPRIVKEY
    echo -e "rpcuser=$rpcuser\nrpcpassword=$rpcpassword\naddnode=seed1.projectsono.io\naddnode=seed1.projectsono.io\naddnode=seed1.projectsono.io\naddnode=gfx-world.org\nserver=1\nlisten=1\nmaxconnections=100\ndaemon=1\nport=20000\nstaking=0\nrpcallowip=127.0.0.1\nexternalip=$VPSIP:20000\nmasternode=1\nmasternodeprivkey=$MASTERNODEPRIVKEY" > /root/.SONOv2/sono.conf


# echo "Get Chaindata"
# cd ~/.SONOv2
# rm -rf database txleveldb smsgDB
# wget https://chaindata.zip
# unzip chaindata.zip

echo "Starting Sono Daemon"
sudo SONOd --daemon
#echo "Run ./SONOd"
#screen -dmS SONOd /sonoa/src/./SONOd
