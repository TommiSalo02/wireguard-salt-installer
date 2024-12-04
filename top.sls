base:
  '*':
    - wireguard
    - keygen

  'G@role:client':
    - config.client  # Apply client configuration

  'server':
    - config.server  # Apply server configuration
