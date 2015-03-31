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
## setup
```
docker run -d --name db-data -v /var/lib/postgres busybox
docker run -d --restart=always --volumes-from db-data --name feinstaub-db postgres:9.4
docker run -d --name feinstaub-data -v /home/uid1000 aexea/aexea-base
docker build --tag=feinstaub-prod .
# reset database on first run
# docker run --rm -ti --volumes-from feinstaub-data --link feinstaub-db:db feinstaub-prod python3 manage.py reset_db
# docker run --rm -ti --volumes-from feinstaub-data --link feinstaub-db:db feinstaub-prod python3 manage.py createsuperuser
docker run -d --volumes-from feinstaub-data --link feinstaub-db:db --restart=always --name feinstaub feinstaub-prod
docker run --name feinstaub-nginx --net="host" --volumes-from feinstaub-data --restart=always -v `pwd`/nginx.conf:/etc/nginx/nginx.conf -d nginx
```

## rebuild / update
```
./update.sh
```