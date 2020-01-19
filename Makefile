.DEFAULT_GOAL := up

up:
	docker-compose -f .docker/docker-compose.yml up -d

down:
	docker-compose -f .docker/docker-compose.yml down

server: 
	docker exec -it docker_server_1 sh -c "cd /app && /bin/zsh"

db: 
	docker exec -it docker_db_1 /bin/bash 

pma: 
	docker exec -it docker_phpmyadmin_1 /bin/bash