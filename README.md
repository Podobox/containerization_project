# containerization_project
A project where we try to containerize a simple website. You will find below the steps to test Dockerfiles

## 1. Create a docker network
Create a docker network with bridge's drivers

## 2. Build and run the docker images
Use the following command before to build the springboot's image:
`docker run --name some-mysql --network my_network -v mysqlvol:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=testdb -p 3306:3306 -d mysql:8.2.0`
Then just execute the scrip.sh in each repertory
`cd spring-boot-data-jpa-mysql-master/ && ./build.sh`
`cd ../angular-16-crud-example-master/ && ./build.sh`
These scripts will build and run each docker image

## 3. Access to application
You can now acces to your application using the URL http://localhost:20020

## 4. Docker compose
Now you have images you can stop and remove all container by the script 'destroy.sh' then use the following command execute 'docker-compose.yaml' (in the project's root):
`docker compose up` or `docker-compose up`
If there's a problem try this one: `docker-compose up --fore-recreate`
The same link is used to acces to the application
