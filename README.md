# ImmortalWrt J1900 Ultimate

For Intel J1900 / x86_64 EFI router-server.

Includes LuCI Chinese, Docker, Dockerman, HomeProxy, Xray, Sing-box, DDNS, ttyd, and optional Docker auto-start templates for 3X-UI and SSR server.

## Build

1. Open this repository on GitHub.
2. Go to **Actions**.
3. Choose **Build ImmortalWrt J1900**.
4. Click **Run workflow**.
5. Use default version `25.12.1` and root size `16G`.
6. After build, download artifact `immortalwrt-j1900-firmware`.
7. Flash the `.img.gz` to SSD.

## Default LAN

Default LAN IP is kept as `192.168.1.1` unless you change it after flashing.

## After flashing

Set PPPoE in LuCI, then configure DDNS and 3X-UI.

Docker templates are placed in `/root/docker-compose.yml`.
