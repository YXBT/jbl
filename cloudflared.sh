#!/bin/bash
wget https://github.com/cloudflare/cloudflared/releases/download/2021.9.1/cloudflared-linux-amd64.deb
dpkg -i cloudflared-linux-amd64.deb
cloudflared tunnel
