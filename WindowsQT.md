# Sono QT Wallet Masternode Install

### Get your IP from here
http://ipinfo.io/ip

### masternode.conf
```
SONO1 IPADDRESS:20000 MASTERNODEPRIVKEY TRANSACTIONHASH INDEX#(0 or 1)
```

### sono.conf
```
listen=1
port=20000
masternode=1
masternodeaddr=IPADDRESS:20000
masternodeprivkey=YOURMASTERNODEPRIVKEY
addnode=seed1.projectsono.io
addnode=seed1.projectsono.io
addnode=seed1.projectsono.io
addnode=gfx-world.org
```

Issues connecting QT Masternodes  
-Control Panel\System and Security\Windows Defender Firewall\Allowed apps
 add sono qt wallet  
-Open the port in your router
