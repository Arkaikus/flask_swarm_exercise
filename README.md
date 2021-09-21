# Flask API example

Simple TODO flask app deployed with docker, docker-compose and maybe docker swarm

# Docker hub
- Run `make build`
- Run `docker compose push app`

# Docker Compose

- Run `make run` to deploy in docker 
- Run `make db` once to initialize postgresql database

# Docker Swarm

- Guide: [deploy to swarm](https://docs.docker.com/engine/swarm/stack-deploy/)
- Check Makefile  or:
- `docker swarm init`
- `docker stack deploy --compose-file .\docker-compose.yml flask_project` or `make sdeploy`
- `docker exec -it <app-id> flask db init`
- `docker exec -it <app-id> flask db migrate`
- `docker exec -it <app-id> flask db upgrade`
- `docker stack services flask_project`

## Remove Docker Swarm

- `docker stack rm flask_project` or `make sdelete`
- `docker swarm leave --force` or `make sleave`