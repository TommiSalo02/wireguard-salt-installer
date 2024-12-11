# Create keys directory
create-keys-dir:
  file.directory:
    - name: /etc/wireguard/keys
    - user: root
    - group: root
    - mode: 0755

# Set WireGuard directory permissions
set-wireguard-permissions:
  file.directory:
    - name: /etc/wireguard
    - user: root
    - group: root
    - mode: 0755

# Generate private key
generate-private-key:
  cmd.run:
    - name: wg genkey | tee /etc/wireguard/keys/client_privatekey
    - creates: /etc/wireguard/keys/client_privatekey
    - user: root
    - group: root
    - onchanges_in:
      - file: set-privatekey-permissions

# Set private key permissions
set-privatekey-permissions:
  file.managed:
    - name: /etc/wireguard/keys/client_privatekey
    - user: root
    - group: root
    - mode: 0644  

# Generate public key
generate-public-key:
  cmd.run:
    - name: cat /etc/wireguard/keys/client_privatekey | wg pubkey > /etc/wireguard/keys/client_publickey
    - creates: /etc/wireguard/keys/client_publickey
    - user: root
    - group: root
    - onchanges_in:
      - file: set-publickey-permissions

# Set public key permissions
set-publickey-permissions:
  file.managed:
    - name: /etc/wireguard/keys/client_publickey
    - user: root
    - group: root
    - mode: 0644  # Global read permissions
