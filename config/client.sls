create-config-directory:
  file.directory:
    - name: /etc/wireguard
    - user: root
    - group: root
    - mode: 700

configure-client:
  file.managed:
    - name: /etc/wireguard/wg0.conf
    - source: salt://config/wg0-client.conf
    - user: root
    - group: root
    - mode: 600
