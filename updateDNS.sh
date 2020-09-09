#!/bin/sh

# Shell script to update namecheap.com dynamic dns
# for a domain to your external IP address

HOSTNAME=YOUR-SUB-DOMAIN (ex: play) (If using root domain - no subdomain - just use @)
DOMAIN=YOUR-ROOT-DOMAIN (ex: tu-gaming.com)
PASSWORD=YOUR_DNS_PASSWORD_FROM_NAMECHEAP

IP=`dig +short your_ngrok_reservered_address_NO_PORT | tail -n1`

curl "https://dynamicdns.park-your-domain.com/update?host=$HOSTNAME&domain=$DOMAIN&password=$PASSWORD&ip=$IP"

