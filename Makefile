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
	&& sudo docker volume create redisdb_appdata \
	&& sudo docker volume create redisdb_timezone \
	&& sudo docker volume create redisdb_localtime \
	&& sudo docker volume create dynamodb_data
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
	&& sudo docker volume create redisdb_appdata \
	&& sudo docker volume create redisdb_timezone \
	&& sudo docker volume create redisdb_localtime \
	&& sudo docker volume rm dynamodb_data
