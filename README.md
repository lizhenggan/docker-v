## 使用说明
- build php镜像
```
cd php-fom7.2
docker build -t php7.2:v1.0 .
```
- docker-compose设置挂载路径
- 启动安装compose安装服务
```
./run.sh
```
就这样 你就拥有了 PHP7.2 + redis + mysql5.6 + nginx 的环境

目前挂载目录在
```
../Code
```
你可以在docker-compose.yml 中修改挂载配置
