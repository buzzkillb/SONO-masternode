#!/bin/bash
while true
do
  clear
  echo "====================================="
  echo "Sono Masternode Installer v1.337"
  echo "====================================="
  echo "Enter 1 to Install Compiled Wallet: "
  echo "Enter 2 to Install Pre-Compiled Binary: "
  echo "Enter 3 to Getinfo: "
  echo "Enter 4 to scroll debug.log: "
  echo "Enter 5 to Masternode status: "
  echo "Enter q to exit this menu: "
  echo -e "\n"
  echo -e "Enter your selection \c"
  read answer
  case "$answer" in
    1) bash -c "$(wget -O - https://raw.githubusercontent.com/mtbor/SONO-masternode/master/compile.sh)" ;;
    2) bash -c "$(wget -O - https://raw.githubusercontent.com/mtbor/SONO-masternode/master/nocompile.sh)" ;;
    3) SONOd getinfo ;;
    4) tail -f ~/.SONOv2/debug.log ;;
    5) SONOd masternode status ;;
    q) exit ;;
  esac
  echo -e "Enter return to continue \c"
  read input
done
