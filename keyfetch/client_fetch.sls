# Push the private key to the master
push-private-key:
  module.run:
    - name: cp.push
    - path: /etc/wireguard/keys/client_privatekey

# Push the public key to the master
push-public-key:
  module.run:
    - name: cp.push
    - path: /etc/wireguard/keys/client_publickey

