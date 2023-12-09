docker stop springboot
docker stop some-mysql

docker rm springboot
docker rm some-mysql

docker rmi podobox/springboot:1.0
docker run --name some-mysql --network springbootapp -v mysqlvol:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=testdb -p 3306:3306 -d mysql:8.2.0
mvn clean package
docker build -t podobox/springboot:1.0 .
docker run -e SPRING_PROFILES_ACTIVE=conteneur -d --network springbootapp --name springboot -p 8080:8080 podobox/springboot:1.0
sleep 5
docker ps
