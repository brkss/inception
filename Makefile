

DOCKER_COMPOSE_FILE=./srcs/docker-compose.yml
USER=debian

all: up

up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up --build 

down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

clean: down
	sudo rm -Rf /home/$(USER)/data/wordpress/*
	sudo rm -Rf /home/$(USER)/data/mariadb/*
	docker system prune -af

re: down up

