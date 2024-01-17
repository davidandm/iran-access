#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color

installApps()
{
    clear

    OS="$REPLY" ## <-- This $REPLY = You are going to limit access to this host only from Iran IPs
    echo -e ""
    echo -e ""
    echo -e "${RED}Note:${NC} This will make your server to be accessable only from Iranian IPs"
    echo -e "Please select ${GREEN}'y'${NC} to continue."
    echo -e ""

    #### Try to instal Iran IPs in hosts.allow
    read -rp "Import Iran IPs into hosts.allow? (y/n): " IRIPS

    startInstall
}

startInstall() 
{
    clear
    echo -e "*******************************************************"
    echo -e "***         Preparing for Installation              ***"
    echo -e "*******************************************************"
    echo -e ""
    sleep 1s

#######################################################
###           Install for Debian / Ubuntu           ###
#######################################################

    if [[ "$OS" == [1] ]]; then
        if [[ "$IRIPS" == [yY] ]]; then

            echo -e "${RED}Note:${NC}${GREEN} Enter each parameter carefully:${NC}"
            echo -e ""
            
            read -e -p "      1. Please Enter your HOST IP Address: " -i "192.168.10.1" hostIP
            hostIP=${hostIP:-"192.168.10.1"}

            read -e -p "      2. Please Enter your trusted server IP: " -i "192.168.10.2" srvSP
            srvSP=${srvSP:-"192.168.10.2"}

            cd /etc/
            rm hosts.allow
            rm hosts.deny
            wget 
            wget 
            sleep 2s

            echo""
            echo "ALL: ${hostIP:-"192.168.10.1"}" >> /etc/hosts.allow
            echo "ALL: ${srvSP:-"192.168.10.1"}" >> /etc/hosts.allow

            sudo service ssh restart

        fi
    fi

cd

    clear

    echo ""
    echo ""
    echo -e "${GREEN}Iran IPs successfuly imported.${NC}"
    echo ""
    echo -e "All incoming traffic from Iran, your host ${YELLOW}${hostIP:-"192.168.10.1"}${NC} and your trusted server ${YELLOW}${srvSP:-"192.168.10.2"}${NC} can be accepted and other IPs will be refused."
    echo ""
    echo ""

    exit 1
}

echo ""
echo ""

clear

echo -e "${YELLOW}Let's figure out which OS / Distro you are running.${NC}"
echo -e ""
echo -e ""
echo -e "${GREEN}    From some basic information on your system, you appear to be running: ${NC}"
echo -e "${GREEN}        --  OS Name            ${NC}" $(lsb_release -i)
echo -e "${GREEN}        --  Description        ${NC}" $(lsb_release -d)
echo -e "${GREEN}        --  OS Version         ${NC}" $(lsb_release -r)
echo -e "${GREEN}        --  Code Name          ${NC}" $(lsb_release -c)
echo -e ""
echo -e "${YELLOW}------------------------------------------------${NC}"
echo -e ""
echo -e ""
echo -e "${GREEN}    Use this script to make your server only accessable from Iranian IPs ${NC}"
echo -e ""

PS3="Enter 1 to continue or 2 to Exit: "
select _ in \
    "OK" \
    "Exit"
do
  case $REPLY in
    1) installApps ;;
    2) exit ;;
    *) echo "Invalid selection, please try again..." ;;
  esac
done
