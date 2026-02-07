#!/bin/bash
clear
echo -e "=============================="
echo -e "     🚀 GAMING VPN MENU 🚀    "
echo -e "=============================="
echo -e " 1) SSH / WS"
echo -e " 2) VMESS"
echo -e " 3) VLESS"
echo -e " 4) TROJAN"
echo -e " 5) SETTING"
echo -e " 6) UPDATE MENU"
echo -e " 7) STATUS SERVICE"
echo -e " 8) EDIT BANNER"
echo -e "------------------------------"
echo -e " 9) BACKUP LOKAL"
echo -e "10) BACKUP TELEGRAM 🤖"
echo -e "11) RESTORE TELEGRAM ♻️"
echo -e "12) PANEL BOT TELEGRAM 📊"
echo -e "------------------------------"
echo -e "13) ADD HOST"
echo -e "14) UDP / ZIVPN"
echo -e " 0) EXIT"
echo -e "=============================="
read -p "Select menu [0-14]: " opt

case $opt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trojan ;;
5) clear ; menu-set ;;
6) clear ; updatemenu ;;
7) clear ; running ;;
8) clear ; nano /etc/issue.net ;;
9) clear ; menu-backup ;;
10) clear ; bash /bot-telegram/gaming-bot.sh backup ;;
11) clear ; bash /bot-telegram/gaming-bot.sh restore ;;
12) clear ; bash /menu/menu-telegram.sh ;;
13) clear ; add-host ;;
14) clear ; zivpn ;;
0) exit ;;
*) echo "Wrong input!" ; sleep 1 ; menu ;;
esac
