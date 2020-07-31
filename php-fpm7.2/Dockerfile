FROM php:7.2-fpm

RUN apt-get update \
    && apt-get install -y libpng-dev vim supervisor \
    && apt-get install openssl \
    && apt-get install libssl-dev -y \
    && apt-get install git -y

RUN apt-get install -y libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev

RUN docker-php-ext-install mysqli pdo_mysql pcntl gd \
     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
     && docker-php-ext-install -j$(nproc) gd \

    && pecl install redis \
    && docker-php-ext-enable redis \
    && docker-php-ext-install bcmath \
    && docker-php-ext-install sockets \
    && apt-get clean \
    && apt-get autoclean \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo \
    && composer clear-cache \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.composer \
    && cp /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime 


# nghttp
COPY ./kuozan/nghttp2-1.30.0.tar.bz2 /home

RUN tar -xjvf /home/nghttp2-1.30.0.tar.bz2 \
    && cd nghttp2-1.30.0 \
    && ./configure \
    && make \
    && make install

COPY ./kuozan/swoole-src-4.4.2.tar.gz /home

RUN  tar -zxvf /home/swoole-src-4.4.2.tar.gz \
    && mv swoole-src* swoole-src \
    && cd swoole-src \
    && phpize \
    && ./configure \
    --enable-coroutine \
    --enable-openssl  \
    --enable-http2  \
    --enable-async-redis \
    --enable-sockets \
    --enable-mysqlnd \
    && make clean \
    && make \
    && make install \
    && rm -rf /home/kuozan/swoole-src-4.4.2.tar.gz

#COPY ./kuozan/mongodb-1.4.3.tgz /home

#RUN apt-get update \
#    && apt-get install opensll \
#    && apt-get install libssl-dev

#RUN tar -zxvf /home/mongodb-1.4.3.tgz \
#    && cd mongodb-1.4.3 \
#    && phpize \
#    && ./configure --with-mongodb-ssl=openssl \
#    && make \
#    && make install
