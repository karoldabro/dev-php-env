.DEFAULT_GOAL := up

up:
	docker-compose up -d

down:
	docker-compose down

server: 
	docker exec -it docker_server_1 sh -c "cd /app && /bin/zsh"

db: 
	docker exec -it docker_db_1 sh -c "cd /app && /bin/bash"

pma: 
	docker exec -it docker_phpmyadmin_1 sh -c "cd /app && /bin/bash"