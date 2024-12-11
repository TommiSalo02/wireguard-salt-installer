configure-client:
  file.managed:
    - name: /etc/wireguard/wg0.conf
    - source: salt://config/wg0-client.conf
    - user: root
    - group: root
    - template: jinja
