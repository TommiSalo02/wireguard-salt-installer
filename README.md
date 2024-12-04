# Salt WireGuard Installer

## Purpose
This project partially automates the installation and configuration of **WireGuard VPN** between a server and a client using SaltStack. 

---

## Screenshot
![image](https://github.com/user-attachments/assets/25ce0ba7-aea8-4002-abe6-792893c098c5)

---

## License
This project is licensed under the **GNU General Public License v3.0**

---

## Author
Tommi Salo

---

## Download & Configuration
```

# 1. Download & configure Salt on your machines (https://docs.saltproject.io/salt/install-guide)

# 2. Clone this repository to the master /srv/salt/ using the following command:

git clone https://github.com/TommiSalo02/wireguard-salt-installer.git

# 3. Run salt '*' state.apply

# 4. Fetch passwords with commands from 'keyfetch' file, instert them into wg0.conf files

# 5. Re-run conf with new keys, run wgup to start Wireguard

```
