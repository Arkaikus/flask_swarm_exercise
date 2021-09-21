# Flask API example

# Docker hub
- `docker compose -p "flask_app" build app`
- `docker tag <img-id> <username>/<tag>`

# Deploy

Run `docker compose up -d` to deploy in docker then tty to the container and run
- `flask db init`
- `flask db migrate -m "init"`
- `flask db upgrade` to initialize the db

# Docker Swarm

- [deploy to swarm](https://docs.docker.com/engine/swarm/stack-deploy/)
- `docker swarm init`
- `docker stack deploy --compose-file .\docker-compose.yml flask_project`
- `docker stack services flask_project`

## Remove Docker Swarm

- `docker stack rm flask_project`
- `docker swarm leave --force`