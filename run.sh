DOCKER_ID=docker_phpfpm_1
DOCKER_ID2=docker_phpfpm2_1
docker-compose up -d
docker exec -i $DOCKER_ID /bin/bash -c 'supervisord -c /etc/supervisor/conf.d/tpqueue.conf'
docker exec -i $DOCKER_ID2 /bin/bash -c 'supervisord -c /etc/supervisor/conf.d/tpqueue.conf'
docker exec -i $DOCKER_ID /bin/bash -c 'supervisord -c /etc/supervisor/conf.d/luckqueue.conf'
