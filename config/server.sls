create-config-directory:
  file.directory:
    - name: /etc/wireguard
    - user: root
    - group: root
    - mode: 700

configure-server:
  file.managed:
    - name: /etc/wireguard/wg0.conf
    - source: salt://config/wg0-server.conf
    - user: root
    - group: root
    - mode: 600
