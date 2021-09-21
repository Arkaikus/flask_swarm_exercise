build:
	docker-compose -f "./docker-compose.yml" build app

run:
	docker-compose -f "./docker-compose.yml" up -d

stop:
	docker-compose -f "./docker-compose.yml" stop

db:
	docker-compose -f "./docker-compose.yml" exec app flask db init
	docker-compose -f "./docker-compose.yml" exec app flask db migrate
	docker-compose -f "./docker-compose.yml" exec app flask db upgrade

sdeploy:
	docker stack deploy --compose-file .\docker-compose.yml flask_project

sdelete:
	docker stack rm flask_project

sleave:
	docker swarm leave --force

deploy: stop run