#!/bin/bash
# gaming telegram bot backup & restore
BOT_TOKEN="ISI_TOKEN_BOT"
CHAT_ID="ISI_CHAT_ID"

send_msg() {
curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$1" >/dev/null
}

case "$1" in
backup)
tar -czf /root/backup-gaming.tar.gz /etc /var/lib
send_msg "✅ Backup gaming berhasil"
;;
restore)
tar -xzf /root/backup-gaming.tar.gz -C /
send_msg "♻️ Restore gaming berhasil"
;;
*)
echo "Usage: $0 backup|restore"
;;
esac
