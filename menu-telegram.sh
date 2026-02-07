#!/bin/bash
clear
echo "=== MENU TELEGRAM GAMING ==="
echo "1) Backup via Telegram"
echo "2) Restore via Telegram"
echo "3) Notif Telegram test"
read -p "Pilih: " opt
case $opt in
1) bash /bot-telegram/gaming-bot.sh backup ;;
2) bash /bot-telegram/gaming-bot.sh restore ;;
3) bash /bot-telegram/gaming-bot.sh backup ;;
esac
