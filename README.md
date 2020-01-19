# dev-php-env
Simple environment for php framework/cms development based on docker and git submodules

## Features
- Docker webdevops environment with php7.3.
- Example VS Code settings for xdebug.
- Example PHP project configuration.
- Copy ssh form given directory to make possible to use git inside the container.
- Make file to manage creation.
- Database container.
- PhpMyAdmin container.
## Containers
| name | features | ports |
| ---- | -------- | ----- |
| server | Contains apache, php, xdebug, node, and zsh shell. Optionally your ssh keys can be copied into it so you can use git inside this container. | apache: 9001 <br/> php: 9000 |
| db | Contains maria db. [ Credentials ](###Container:\ db) | 3306 |
| phpmyadmin| Contains phpmyadmin that operates on db container data. [ Credentials ](###Container:\ phpmyadmin) | 9002

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
git submodule add git@github.com:karoldabro/library-dev-php.git .docker
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
docker compose up -d
```
#### Down docker-compose network by:
```bash
# By Makefile command:
make down
# By alternative command:
docker compose down
```
#### Exec container shell by:
```bash
# By Makefile command:
make server
# By alternative command:
docker exec -it docker_server_1 /bin/zsh
```