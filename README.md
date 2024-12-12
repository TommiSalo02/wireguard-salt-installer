# Wireguard Salt Installer

This project allows for a swift installation of wireguard VPN between two machines utilizing salt. Utilizes one machine as the salt master to configure a VPN connection between two salt minions.

Created as the final project for Configuration Management Systems course 2024.

## Author

Tommi Salo

## License 

This project is licensed under the GNU General Public License v3.0.

## Installation

```
# 1. Install Salt on the two minions and the master

sudo apt-get update && sudo apt-get install curl -y && sudo mkdir -p /etc/apt/keyrings && curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp && curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources && sudo apt-get update && sudo apt-get install salt-minion -y && sudo systemctl enable salt-minion && sudo systemctl start salt-minion

https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/linux-deb.html

# 2. Configure "master" in /etc/salt/minion to match the master's IP-address. Accept the minion keys on the master.

# 3. Clone repository to /srv/salt on the master

# 4. Run the wireguard, keygen and keyfetch states

sudo salt '*' state.apply wireguard

sudo salt 'client' state.apply keygen.client_gen
sudo salt 'server' state.apply keygen.server_gen

# 5. Copy keys into the keyfetch file

sudo cp /var/cache/salt/master/minions/client/files/etc/wireguard/keys/* /srv/salt/keyfetch/
sudo cp /var/cache/salt/master/minions/server/files/etc/wireguard/keys/* /srv/salt/keyfetch/

# 6. Run the config and wgup states

sudo salt 'client' state.apply config.client
sudo salt 'server' state.apply config.server

sudo salt '*' state.apply wgup

# 7. Test the wireguard connection by pinging the other minion

# 8. Your wireguard connection is ready to go. Remember to delete the old keys once you are no longer using the connection.

```
