configure-server:
  file.managed:
    - name: /etc/wireguard/wg0.conf
    - source: salt://config/wg0-server.conf
    - user: root
    - group: root
    - template: jinja
