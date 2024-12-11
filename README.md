# Wireguard Salt Installer

This project allows for a swift installation of wireguard VPN between two machines utilizing salt. Utilizes one machine as the salt master to configure a VPN connection between two salt minions.

Created as the final project for Configuration Management Systems course 2024.

## Author

Tommi Salo

## License 

This project is licensed under the GNU General Public License v3.0.

## Installation

```
# 1. Install Salt on the two minionsa and the master

https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/linux-deb.html

# 2. Clone repository to /srv/salt on the master

# 3. Configure "master" in /etc/salt/minion to match the master's IP-address. Accept the minion keys on the master.

# 4. Run the wireguard, keygen and keyfetch states

# 5. Copy keys into the keyfetch file

# 6. Run the config and wgup states

# 7. Test the wireguard connection by pinging the other minion

# 8. Your wireguard connection is ready to go. Remember to delete the old keys once you are no longer using the connection.

```
