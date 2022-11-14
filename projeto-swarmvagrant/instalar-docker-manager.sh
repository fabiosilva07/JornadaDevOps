#!/bin/bash

echo "Instalando o Docker......."

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo mkdir /data

sudo mkdir /data/wordpress

sudo mkdir /data/wordpress/wordpress

sudo mkdir /data/wordpress/mysql

sudo chmod 777 -R /data

sudo chown nobody:nogroup -R /data

sudo docker swarm init --listen-addr 192.168.0.3:2377 --advertise-addr 192.168.0.3:2377
sudo docker swarm join-token --quiet worker > /vagrant/worker_token

