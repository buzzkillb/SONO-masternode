# SONO Masternode Installer

```
bash -c "$(wget -O - https://raw.githubusercontent.com/buzzkillb/SONO-masternode/master/sono.sh)"
```
or  

## Sono QT Wallet Masternode Guide
https://github.com/buzzkillb/SONO-masternode/blob/master/WindowsQT.md

## Masternode Status Codes
```MASTERNODE_NOT_PROCESSED: 0 
MASTERNODE_IS_CAPABLE: 1 
MASTERNODE_NOT_CAPABLE: 2 
MASTERNODE_STOPPED: 3
MASTERNODE_INPUT_TOO_NEW: 4
MASTERNODE_PORT_NOT_OPEN: 6
MASTERNODE_PORT_OPEN: 7
MASTERNODE_SYNC_IN_PROCESS: 8
MASTERNODE_REMOTELY_ENABLED: 9
```

Use this instructions to install the wallet, fix wallet issues and setup one/multiple masternode(s).
This guide is for the creation of separate Controller Wallet & Masternode.
For Security reasons, THIS IS THE PREFERRED way to run a Masternode. By running your Masternode in this way you are protecting
your coins in your private wallet, and are not required to have your local wallet running after the Masternode has been started successfully.
Your coins will be safe if the masternode server gets hacked.

## Table of Content
* [1. Desktop Wallet Preparation](#1-desktop-wallet-preparation-)
* [2. Masternode Setup](#2-masternode-setup-)
	* [2.1 Send the coins to your wallet](#21-send-the-coins-to-your-wallet)
	* [2.2 VPS setup](#22-vps-setup)
	* [2.3 Automatic Masternode Setup](#23-automatic-masternode-setup)
	* [2.4 Add masternode on the desktop wallet](#24-add-masternode-on-the-desktop-wallet)
* [3. FAQ](#3-faq)
* [4. The last and the most important step](#4-the-last-and-the-most-important-step)

## 1. Desktop Wallet Preparation

### 1.1 Setup the wallet
1. Download the [wallet](https://github.com/zPools/sonoa/releases)
1. Start and Close the wallet. (creates the folder structure)
1. Start the wallet and wait for the sync. (30min to 10h depending on the number of the connections)
	
## 2. Masternode Setup

### 2.1 Send the coins to your wallet
1. Open Console (Help => Debug window => Console)
1. Create a new address. `getnewaddress Masternode1`
1. Send exactly 1000 coins to this address. (One transaction, pay attention to the fee)
1. Wait for at least 15 confirmations.
1. Save the transaction id, index `masternode outputs`, and generate and save a new masternode private key `masternode genkey`.
1. You can optionaly encrypt the wallet (Settings => Encypt wallet) for security reasons. Do not forget the password or you lose the coins that you have.
1. Backup `%appdata%/SONOv2/wallet.dat` file. This contains your coins. DO NOT LOSE IT!
```
SONO1 IPADDRESS:20000 MASTERNODEPRIVKEY TRANSACTIONHASH INDEX#(0 or 1)
```

### 2.2 VPS setup
1. Register on [Vultr](https://www.vultr.com/?ref=7307426). (or [DigitalOcean](https://m.do.co/c/6dffa03c3628)) (do not forget verify your e-mail)
1. Send some money (10$ is enough for two months) to your account to deploy a server. (1 server cost 5$/mo, some accept bitcoin)
1. Deploy a new server.
    - Server Type: Ubuntu 16.04
    - Server Size: 5$/mo, 1GB memory

### 2.3 Automatic Masternode Setup

1. Download [putty](https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.70-installer.msi)
1. Start putty and login as root user. (Root password and server ip address is in vultr overview tab)
1. Paste this command and answer the questions, use defaults for anything and only need to enter masternodeprivkey:
```
bash -c "$(wget -O - https://raw.githubusercontent.com/buzzkillb/SONO-masternode/master/sono.sh)"
```

### 2.4 Add masternode on the desktop wallet

1. Open wallet, wait for sync, unlock wallet
1. Go Masternodes tab
1. Click create
	- Set a name: Masternode1
	- Set the VPS ip and the port: [Ip:Port]
	- Set the generated private key: step 2.1.5
	- Click Add and after click Start
	- Wait to start receiving coins. Check your the masternode address here: [https://altexplorer.co/coin/sonov2](https://altexplorer.co/coin/sonov2)
	- Note: You can't edit the masternodes config in the wallet but you can edit the file. `%appdata%/SONOv2/masternode.conf`.

## 3. FAQ

1. How to get masternode profit?
	- Enable coin control feature (Settings => Options => Display => Display coin control feature)
	- Go send tab
	- Select from the input button only the 5 coin lines
	- Click OK
	- You can send selected amount to an address.
	- Note: DO NOT EVER Transfer SONO from that original 1000 deposit or you'll break your Masternode.
1. I get the following error: "Could not allocate vin"
	- Make sure your wallet fully synced and UNLOCKED.
1. My wallet says my masternodes are not running.
	- The wallet will tell you its not running sometimes when it is. If you still receving the masternode rewards then everything is fine.
1. I got stuck. Can you help me?
	- Try to get help from the cummunity
