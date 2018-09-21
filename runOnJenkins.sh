docker stop crm-c
docker rm crm-c
docker image rm crm-c:0.0.1
docker build . -t crm-c:0.0.1
docker run -d -p 8880:8880 --name crm-c --network crm-network --network-alias alias-crm-c --link crm-test-mysql crm-c:0.0.1
