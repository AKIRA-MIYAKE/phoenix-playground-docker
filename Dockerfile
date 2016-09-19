FROM elixir:1.3.2

WORKDIR /code

RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs build-essential postgresql-client inotify-tools

RUN mix local.hex --force \
    && mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force
