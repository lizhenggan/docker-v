#!/bin/bash
# 数据库备份 test 为备份数据库名 多个test test2 
# gzip -d 解压压缩包
Mysqldump='/usr/bin/mysqldump'
Par='-uroot -pqazasdedc123 --opt -E -R --set-gtid-purged=OFF'
BackPath='./'
for Name in test
    do 
    $Mysqldump $Par  $Name | gzip >${Name}_`date +%F_%H-%M_%S`.sql.gz 
done
