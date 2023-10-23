# dev_rails

![Ruby_On_Rails_Logo svg](https://user-images.githubusercontent.com/5633085/101983216-dfba9f80-3cbc-11eb-9c02-d406eaba9cd3.png)


- docker images
  - rails-app
    - ruby:2.7.2 (nginx,puma,supervisor)
  - rails-db
    - mysql:8.0.27
  - rails-redis


- git clone or fork

```
mkdir -p ~/git/github
cd ~/git/github
git clone git@github.com:RVIRUS0817/dev_rails.git
```

- add localhost /etc/hosts

```
sudo vim /etc/hosts
127.0.0.1 dev.adachin.com
```

- docker run

```
cd dev_rails
cp .env.example .env
cd docker/dev
docker-compose up -d
```

- app deploy

```
docker exec -it rails-app bash

yarn install
bundle install
rails db:migrate
/usr/bin/supervisorctl restart app
``` 

- Access

![スクリーンショット 2020-12-19 22 22 14](https://user-images.githubusercontent.com/5633085/102690442-cc717c00-4248-11eb-90ad-1c5ab5d5933f.jpg)


http://dev.adachin.com/

- DB login

```
docker exec -it rails-app bash
mysql -u root -h db -p
```

- redis login
```
docker exec -it rails-app bash
redis-cli -h redis

```

## When want to use binding.pry

```
docker exec -it rails-app bash
supervisorctl stop app
bundle exec rails s
```

## How to download Rails app

```
bundle exec rails new app
```

---

RUN docker/dev-micro

https://github.com/RVIRUS0817/dev_rails/tree/master/docker/dev-micro
