# Multiple Sono Windows QT Masternode Wallets on Single PC  

Create a directory called **Masternodes**  
Create SONO1 SONO2 SONO3 SONO4 directories under this **Masternodes** directory  
Copy the SONO-WIN-2-0.exe into the folder and rename it to whatever the Directory is called eg SONO1.exe  

Create a file called startsono1.cmd and enter the following and save. **Always run the .cmd not the .exe for each masternode wallet.** The hot wallet you run the .exe.    
### startsono1.cmd  
```
start SONO1.exe -datadir=./ -listen=0
exit
```

example conf in SONO1 folder (Cold Wallets Only)    
### sono.conf  
```
listen=1
port=DIFFERENTPORTPERMASTERNODE
masternode=1
masternodeaddr=IPADDRESS:PORT
masternodeprivkey=YOURMASTERNODEPRIVKEY
addnode=seed1.projectsono.io
addnode=seed2.projectsono.io
addnode=seed3.projectsono.io
addnode=gfx-world.org
addnode=seed.zpools.de
```

For your main SONO wallet appdata/roaming/sonov2. This is your hot wallet outside of the **Masternodes** directory, for 3 masternodes  
### sono.conf
```
staking=1
listen=1
addnode=seed1.projectsono.io
addnode=seed2.projectsono.io
addnode=seed3.projectsono.io
addnode=gfx-world.org
addnode=seed.zpools.de
```
### masternode.conf  
```
SONO1 IPADDRESS:20000 MASTERNODEPRIVKEY TRANSACTIONHASH INDEX#(0 or 1)
SONO2 IPADDRESS:20001 MASTERNODEPRIVKEY TRANSACTIONHASH INDEX#(0 or 1)
SONO3 IPADDRESS:20002 MASTERNODEPRIVKEY TRANSACTIONHASH INDEX#(0 or 1)
```
To run, start your hot wallet .exe, then start each cold wallet with the .cmd.  
#### Hot wallet has a sono.conf and masternode.conf, cold wallet has a sono.conf only.
