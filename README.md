# Flask API example

# Deploy

Run `docker compose up -d` to deploy in docker then tty to the container and run
- `flask db init`
- `flask db migrate -m "init"`
- `flask db upgrade`

to initialize the db
