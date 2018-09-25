FROM perl:5.22.4-threaded
MAINTAINER liguo 1334435738@qq.com
RUN curl http://share-10066126.cos.myqcloud.com/cpanm.pl|perl - App::cpanminus  \
    && cpanm Mojo::Weixin   \
    && cpanm  Mojo::SMTP::Client MIME::Lite 

COPY ../../Code/My/perlWx /home/perlwx