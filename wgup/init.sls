# Enable and start the WireGuard service
start-wireguard:
  service.running:
    - name: wg-quick@wg0
    - enable: True
