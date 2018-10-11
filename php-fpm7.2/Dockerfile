FROM php:7.2-fpm
RUN apt-get update && apt-get install -y libpng-dev vim supervisor

RUN apt-get install -y libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev 

RUN	docker-php-ext-install mysqli pdo_mysql pcntl gd \

	# && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    # && docker-php-ext-install -j$(nproc) gd \
    
	&& pecl install redis \
    && docker-php-ext-enable redis \
    && docker-php-ext-install bcmath \
    && pecl install swoole \
	# 用完包管理器后安排打扫卫生可以显著的减少镜像大小
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

COPY php.ini /usr/local/etc/php/

