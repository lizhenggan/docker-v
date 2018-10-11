DOCKER_ID=docker_phpfpm_1
docker-compose up -d
docker exec -i $DOCKER_ID /bin/bash -c 'supervisord -c /etc/supervisor/conf.d/tpqueue.conf'
