# Create key directory
create-key-directory:
  file.directory:
    - name: /etc/wireguard/keys
    - user: root
    - group: root
    - mode: 700

# Generate private key
generate-private-key:
  cmd.run:
    - name: wg genkey | tee /etc/wireguard/keys/privatekey
    - creates: /etc/wireguard/keys/privatekey
    - user: root
    - group: root
    - require:
        - file: create-key-directory

# Generate public key
generate-public-key:
  cmd.run:
    - name: cat /etc/wireguard/keys/privatekey | wg pubkey > /etc/wireguard/keys/publickey
    - creates: /etc/wireguard/keys/publickey
    - user: root
    - group: root
    - require:
        - cmd: generate-private-key
