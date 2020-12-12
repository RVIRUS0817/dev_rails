FROM ruby:2.7.2
ENV APP_ROOT /var/www/app

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    nodejs \
    vim \
    mariadb-client \
	nginx \
	supervisor \
    default-mysql-client && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

WORKDIR $APP_ROOT
RUN gem install bundler 

## nginx
RUN groupadd nginx
RUN useradd -g nginx nginx
ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/dev.myapp.work.conf /etc/nginx/conf.d/dev.adachin.com.conf

## supervisor
RUN mkdir -p /var/log/supervisor
ADD supervisor/app.conf /etc/supervisor/conf.d/app.conf

EXPOSE 80
CMD ["/usr/bin/supervisord"]
