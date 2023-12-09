docker stop angular
docker rm angular
docker rmi podobox/angular:1.0
docker build -t podobox/angular:1.0 .
docker run -d --network springbootapp -p 20020:80 --name angular podobox/angular:1.0
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' angular
