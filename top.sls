base:
  '*':
    - wireguard

  'client':
    - keygen.client_gen
    - keyfetch.client_fetch
    - config.client

  'server':
    - keygen.server_gen
    - keyfetch.server_fetch
    - config.server
