FROM ruby:2.7.2
ENV APP_ROOT /var/www/app
WORKDIR $APP_ROOT

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    nodejs \
    vim \
    nginx \
    supervisor \
    mariadb-client && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN gem install bundler 

## nginx
RUN groupadd nginx
RUN useradd -g nginx nginx
ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/dev.adachin.com.conf /etc/nginx/conf.d/dev.adachin.com.conf

## supervisor
RUN mkdir -p /var/log/supervisor
ADD supervisor/app.conf /etc/supervisor/conf.d/app.conf

EXPOSE 80
CMD ["/usr/bin/supervisord"]
