# Push the private key to the master                                                                                                 push-private-key:
push-private-key:
  module.run:
    - name: cp.push
    - path: /etc/wireguard/keys/server_privatekey

# Push the public key to the master
push-public-key:
  module.run:
    - name: cp.push
    - path: /etc/wireguard/keys/server_publickey
