# phoenix-playground-docker
A Docker container of the Phoenix application playground

## Usage
### Clone from GitHub

    git clone https://github.com/AKIRA-MIYAKE/phoenix-playground-docker.git
    cd phoenix-playground-docker

### Build image

    docker-compose build

### Bootstrap Phoenix application

    docker-compose run --rm app bash

Login app container and run mix command.

    mix phoenix.new app
    exit

### Update config

Update database configuration on `app/config/dev.exs`.

    # Configure your database
    config :app, App.Repo,
      adapter: Ecto.Adapters.Postgres,
      username: "app",
      password: "secret",
      database: "app",
      hostname: "postgres",
      pool_size: 10

### Run app

    docker-compose up
