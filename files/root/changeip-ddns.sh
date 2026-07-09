#!/bin/sh
. /root/changeip.env

[ -z "$CHANGEIP_USER" ] && exit 1
[ -z "$CHANGEIP_PASS" ] && exit 1
[ -z "$CHANGEIP_HOST" ] && exit 1

IP="$(curl -4 -fsS https://api.ipify.org || wget -qO- https://api.ipify.org)"
[ -z "$IP" ] && exit 1

URL="https://nic.changeip.com/nic/update?hostname=${CHANGEIP_HOST}&myip=${IP}"

curl -fsS -u "${CHANGEIP_USER}:${CHANGEIP_PASS}" "$URL" || \
wget -qO- --user="$CHANGEIP_USER" --password="$CHANGEIP_PASS" "$URL"
