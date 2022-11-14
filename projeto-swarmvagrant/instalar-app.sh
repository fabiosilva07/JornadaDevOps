git clone https://github.com/fabiosilva07/Docker.git

cd Docker/swarm/wordpress

sudo echo "admin" | sudo docker secret create wp_dbpass -

sudo docker stack deploy -c wordpress.yml wordpress