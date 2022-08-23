.PHONY: all createvols start stop cleanvols

all: createvols start
clean: stop cleanvols
createvols:
	sudo docker volume create mysql \
	&& sudo docker volume create mongodb \
	&& sudo docker volume create rabbitmq_data \
	&& sudo docker volume create rabbitmq_log \
	&& sudo docker volume create arangodb_data_container \
	&& sudo docker volume create arangodb_apps_data_container \
	&& sudo docker volume create arangodb \
	&& sudo docker volume create redisdb \
	&& sudo docker volume create dynamodb
start:
	sudo docker-compose up -d
stop:
	sudo docker-compose down
cleanvols:
	sudo docker volume rm mysql \
	&& sudo docker volume rm mongodb \
	&& sudo docker volume rm rabbitmq_data \
	&& sudo docker volume rm rabbitmq_log \
	&& sudo docker volume rm arangodb_data_container \
	&& sudo docker volume rm arangodb_apps_data_container \
	&& sudo docker volume rm arangodb \
	&& sudo docker volume rm redisdb \
	&& sudo docker volume rm dynamodb