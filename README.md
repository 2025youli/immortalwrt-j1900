# ImmortalWrt J1900 Ultimate

For Intel J1900 / x86_64 EFI router-server.

## Included

- ImmortalWrt x86_64 EFI image build by GitHub Actions
- LuCI Chinese UI
- Docker / Dockerd / Docker Compose / Dockerman
- HomeProxy / Xray / Sing-box
- DDNS base + Cloudflare support
- ChangeIP DDNS custom updater
- ttyd web terminal
- Auto-expand root filesystem on first boot
- Auto-start services
- Docker Compose template for:
  - 3X-UI
  - SSR server backup container
  - optional Hysteria2 container placeholder

## Build

1. Open this repository on GitHub.
2. Go to **Actions**.
3. Choose **Build ImmortalWrt J1900 Ultimate**.
4. Click **Run workflow**.
5. Keep default version unless you know what you are doing.
6. Wait until it finishes.
7. Download artifact: `immortalwrt-j1900-ultimate-firmware`.
8. Flash the `.img.gz` to SSD using Rufus / balenaEtcher.

## After flashing

Default LAN IP is `192.168.1.1`.

Then configure:

1. PPPoE WAN
2. DDNS
3. Docker / 3X-UI
4. Port forwarding if needed

See `POST_FLASH_STEPS.md`.
