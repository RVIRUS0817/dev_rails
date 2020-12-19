# dev_rails

![Ruby_On_Rails_Logo svg](https://user-images.githubusercontent.com/5633085/101983216-dfba9f80-3cbc-11eb-9c02-d406eaba9cd3.png)


- docker images
  - app-rails
    - ruby:2.7.2 (nginx,unicorn,supervisor)
  - mysql-57
    - mysql:5.7


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
docker exec -it app-rails bash

bundle install
rails db:migrate
/usr/bin/supervisorctl restart app
``` 

- Access

![スクリーンショット 2020-12-19 22 22 14](https://user-images.githubusercontent.com/5633085/102690442-cc717c00-4248-11eb-90ad-1c5ab5d5933f.jpg)


http://dev.adachin.com/

- DB login

```
docker exec -it app-rails bash
mysql -u root -h db -p
```
