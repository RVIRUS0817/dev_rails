# dev_rails

![Ruby_On_Rails_Logo svg](https://user-images.githubusercontent.com/5633085/101983216-dfba9f80-3cbc-11eb-9c02-d406eaba9cd3.png)


- docker images
  - ruby:2.7.2
  - mysql:5.7


- git clone

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
docker-compose up -d
```

- app deploy

```
docker exec -it app bash

bundle install
rails db:migrate
/usr/bin/supervisorctl restart app
``` 

- Access

http://dev.adachin.com/
