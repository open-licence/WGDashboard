services:
  wireguard-dashboard:
    image: donaldzou/wgdashboard:latest
    restart: unless-stopped
    container_name: wgdashboard
    environment:
      - tz=Europe/Amsterdam
      - public_ip=5.129.238.232
      - wgd_port=10086
      - username=yakuza
      - password=P23501604.k
      - enable_totp=false
      - wg_autostart=true
      # - email_server=
      # - email_port=
      # - email_encryption=
      # - email_username=
      # - email_password=
      # - email_from=
      # - email_template=
    ports:
      - 10086:10086/tcp
      - 51820:51820/udp
    volumes:
      - aconf:/etc/amnezia/amneziawg
      - conf:/etc/wireguard
      - data:/data
    cap_add:
      - NET_ADMIN

volumes:
  aconf:
  conf:
  data:
