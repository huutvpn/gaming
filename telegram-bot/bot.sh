
#!/bin/bash
CONF=/etc/telegram-bot/bot.conf
TOKEN=$(grep BOT_TOKEN $CONF | cut -d= -f2)
OFFSET=0

while true; do
  UPD=$(curl -s "https://api.telegram.org/bot$TOKEN/getUpdates?offset=$OFFSET")
  OFFSET=$(echo "$UPD" | jq '.result[-1].update_id + 1')
  CMD=$(echo "$UPD" | jq -r '.result[-1].message.text')

  case "$CMD" in
    /addssh*) bash /usr/bin/menu/ssh/add.sh ;;
    /addvmess*) bash /usr/bin/menu/vmess/add.sh ;;
    /addtrojan*) bash /usr/bin/menu/trojan/add.sh ;;
    /backup*) bash /usr/bin/menu-backup.sh ;;
    /restore*) bash /usr/bin/backup/restore-bot.sh ;;
  esac
  sleep 3
done
