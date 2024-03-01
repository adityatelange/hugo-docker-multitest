#!/bin/bash
echo "[+] Installing Hugo v$HUGO_VERSION"
if [ ! -f /debs/hugo_${HUGO_VERSION}_linux-amd64.deb ]; then
    wget -qO /debs/hugo_${HUGO_VERSION}_linux-amd64.deb \
    "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-amd64.deb"
fi
dpkg -i /debs/hugo_${HUGO_VERSION}_linux-amd64.deb
echo "[+] Running Hugo v$HUGO_VERSION"
cd /src
hugo server -D --bind 0.0.0.0
