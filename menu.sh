#!/bin/bash


# === TELEGRAM BOT SETTINGS ===
function set_telegram_bot() {
  clear
  echo "=== TELEGRAM BOT SETTINGS ==="
  read -p "Masukkan BOT TOKEN : " token
  read -p "Masukkan CHAT ID  : " chat
  mkdir -p /etc/telegram-bot
  echo "BOT_TOKEN=$token" > /etc/telegram-bot/bot.conf
  echo "CHAT_ID=$chat" >> /etc/telegram-bot/bot.conf
  echo "Config Telegram tersimpan di /etc/telegram-bot/bot.conf"
  read -p "Tekan enter untuk kembali"
}

