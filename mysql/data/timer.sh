#!/bin/bashi
#定时脚本 crontab -e   00 01 * * * sudo /bin/sh /root/docker/mysql/data/timer.sh >>/tmp/mysql_backup.txt  每天凌晨一点执行

BACK_PATH='/root/docker/mysql/data/'
DOCKER_ID=docker_mysql_1

sudo /usr/bin/docker exec -i $DOCKER_ID /bin/bash -c 'cd /var/mysql/ && ./backup.sh'
#�~H| �~Y��两天�~I~M�~Z~D�~G份
find $BACK_PATH -mtime +1 -name "*.sql.gz" -exec rm -f {} \; || echo "rm $BACK_PATH *.sql.gz  error "
