# After Flashing

1. Login LuCI: http://192.168.1.1
2. Set root password.
3. Configure PPPoE WAN.
4. Check package manager after network works: `apk update`.
5. Docker starts automatically.
6. 3X-UI starts automatically if image can be pulled.

## 3X-UI

Open:

http://LAN-IP:2053

If not running:

```sh
/etc/init.d/dockerd start
cd /root
docker compose up -d 3x-ui
```

## SSR Server optional start

First edit password:

```sh
vi /opt/ssr/config.json
```

Then start:

```sh
cd /root
docker compose --profile ssr up -d ssr-server
```

## DDNS ChangeIP

If provider preset is missing, use custom URL mode in LuCI DDNS.
