

DOCKER_COMPOSE_FILE=./srcs/docker-compose.yml

all: up

up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up --build 

down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

re: down up

