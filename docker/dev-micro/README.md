# dev_rails

![Ruby_On_Rails_Logo svg](https://user-images.githubusercontent.com/5633085/101983216-dfba9f80-3cbc-11eb-9c02-d406eaba9cd3.png)


- docker images
  - rails-nginx
    - nginx 1.25.2
  - rails-app
    - ruby:2.7.2 (puma)
	- node:12 (yarn)
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
cd docker/dev-micro/
docker-compose up -d
```

- app deploy

```
docker exec -it rails-app bash

rails db:migrate
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
docker exec -it rails-redis bash
redis-cli -h redis

```

## How to download Rails app

```
bundle exec rails new app
```
