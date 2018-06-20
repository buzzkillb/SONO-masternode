# Multiple Sono Windows QT Wallets  

Create a directory called **Masternodes**  
Create SONO1 SONO2 SONO3 SONO4 directories under this **Masternodes** directory  
copy the SONO-WIN-2-0.exe into the folder and rename it to whatever the Directory is called eg SONO1.exe  

create a file called startsono1.cmd and enter the following and save  
### startsono1.cmd  
```
start SONO1.exe -datadir=./ -listen=0
exit
```

example conf in SONO1 folder  
### sono.conf  
```
listen=1
port=DIFFERENTPORTPERMASTERNODE
masternode=1
masternodeaddr=IPADDRESS:PORT
masternodeprivkey=YOURMASTERNODEPRIVKEY
addnode=seed1.projectsono.io
addnode=seed1.projectsono.io
addnode=seed1.projectsono.io
addnode=gfx-world.org
```

In your main SONO wallet, outside of the **Masternodes** directory, for 3 masternodes  
### masternode.conf  
```
SONO1 IPADDRESS:20000 MASTERNODEPRIVKEY TRANSACTIONHASH INDEX#(0 or 1)
SONO2 IPADDRESS:20001 MASTERNODEPRIVKEY TRANSACTIONHASH INDEX#(0 or 1)
SONO3 IPADDRESS:20002 MASTERNODEPRIVKEY TRANSACTIONHASH INDEX#(0 or 1)
```
