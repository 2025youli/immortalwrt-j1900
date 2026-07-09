# Post Flash Steps

## 1. First boot

After first boot, wait 3–5 minutes.  
The system will auto-expand rootfs and may reboot once.

Check:

```sh
df -h
```

Root should be much larger than 300MB.

## 2. Set LAN IP

If you want LAN IP to be 192.168.1.200:

LuCI → Network → Interfaces → LAN → Edit → IPv4 address.

Or SSH:

```sh
uci set network.lan.ipaddr='192.168.1.200'
uci commit network
service network restart
```

## 3. Configure PPPoE WAN

LuCI → Network → Interfaces → WAN → Edit:

- Protocol: PPPoE
- Username: your ISP account
- Password: your ISP password

## 4. Docker check

```sh
service dockerd status
docker version
docker compose version
```

If Docker is not running:

```sh
service dockerd enable
service dockerd restart
```

## 5. Start 3X-UI

```sh
cd /root
docker compose -f docker-compose.yml up -d x-ui
```

Open:

```text
http://192.168.1.1:2053
```

Default values are only placeholders. Change username and password immediately.

## 6. ChangeIP DDNS

Edit:

```sh
vi /root/changeip.env
```

Then enable timer:

```sh
chmod +x /root/changeip-ddns.sh
echo "*/10 * * * * /root/changeip-ddns.sh >/tmp/changeip-ddns.log 2>&1" >> /etc/crontabs/root
/etc/init.d/cron enable
/etc/init.d/cron restart
```

## 7. SSR backup server

SSR is included as a Docker Compose backup service template, not enabled by default.

Start only if needed:

```sh
cd /root
docker compose up -d ssr-server
```

## 8. Power recovery

In BIOS, set:

- Restore on AC Power Loss: Power On
- AC Back: Always On
