# Digital-Ocean

* ubuntu 14.04 droplet mit 512MB Ram
* Backup und v6 aktiviert

(warten)

* einloggen
* User anlegen

* docker installieren:
```
apt-get update
apt-get upgrade
apt-get install linux-image-extra-virtual
wget -qO- https://get.docker.com/ | sh
```

* reboot

* im User home das Repo klonen
```
git clone https://github.com/opendata-stuttgart/feinstaub-api.git
cd feinstaub-api
```

# docker

see README: 
https://github.com/opendata-stuttgart/feinstaub-api/blob/master/README.md