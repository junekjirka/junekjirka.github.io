#!/bin/bash
# Použití: ./deploy.sh https://UZIVATEL.github.io  (nebo https://xyz.pages.dev)
# Nahradí SITE_URL skutečnou adresou. Pozn.: odkazy začínají "/", proto použijte repo UZIVATEL.github.io (kořen domény) nebo Cloudflare Pages.
set -e; [ -z "$1" ] && { echo "Zadej URL"; exit 1; }
grep -rl SITE_URL . --include=*.html --include=*.xml --include=*.txt | xargs sed -i "s#SITE_URL#${1%/}#g"; echo hotovo
