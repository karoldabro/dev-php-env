# dev-php-env
Simple environment for php framework/cms development based on docker and git submodules.
Can be used in laravel/lumen project.

## Features
- Docker webdevops environment with php7.3.
- Example VS Code settings for xdebug.
- Copy ssh form given directory to make possible to use git inside the container.
- Make file to manage creation.
- Database container.
- PhpMyAdmin container.
## Containers
| name | features | ports |
| ---- | -------- | ----- |
| server | Contains apache, php, xdebug and zsh shell. Optionally your ssh keys can be copied into it so you can use git inside this container. | apache: 9001 <br/> php: 9000 |
| db | Contains maria db. [ Credentials ](#container-db) | 3306 |
| phpmyadmin| Contains phpmyadmin that operates on db container data. [ Credentials ](#container-phpmyadmin) | 9002

### Container: db
| key | value |
| --- | ----- |
| host | db |
| user name | root |
| password | root |
| default db name | workspace |

### Container: phpmyadmin
| key | value |
| --- | ----- |
| user name | root |
| password | root |

## Usage
### Prepare environment
1. Open terminal.
2. Go to you project directory:  
```bash
cd your/project/dir/name
```
3. Clone this repo: 
```bash
# If your project use git:
git submodule add git@github.com:karoldabro/dev-php-env.git .docker

# If your project do not use git:
git clone git@github.com:karoldabro/dev-php-env.git .docker
```
4. Copy .env file into your project catalog.
```bash
cp .docker/.env .env
```
5. (Optional) Copy Makefile into your project catalog.
```bash
cp .docker/Makefile .
```
6. Fill .env file with your data.
### Use it
In below examples there are always two commands, first using Makefile, second is traditional approach by docker commands. 
#### Up docker-compose network by:
```bash
# By Makefile command:
make

# By alternative command:
docker-compose -f .docker/docker-compose.yml up -d
```
#### Down docker-compose network by:
```bash
# By Makefile command:
make down

# By alternative command:
docker-compose -f .docker/docker-compose.yml down
```
#### Exec server container shell by:
```bash
# By Makefile command:
make server

# By alternative command:
docker exec -it docker_server_1 /bin/zsh
```

#### Exec db container shell by:
```bash
# By Makefile command:
make db

# By alternative command:
docker exec -it docker_db_1 /bin/bash
```

#### Exec phpmyadmin container shell by:
```bash
# By Makefile command:
make pma

# By alternative command:
docker exec -it docker_phpmyadmin_1 /bin/bash
```
