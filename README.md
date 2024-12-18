# rails-playsgound

## Setup

```
$ bundle instlal --vendor/bundle
$ docker-compose up -d
$ cp .env.template .env
$ bundle exec rails db:create db:migrate
```

## Start

```
$ bundle exec rails s
$ bundle exec sidekiq -C config/sidekiq.yml
```

## Deploy to GCP

```
$ gcloud app deploy app.yaml worker.yaml
```

