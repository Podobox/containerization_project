# containerization_project
A project where we try to containerize a simple website

## 1. Create a docker's network
Create a docker network with bridge's drivers

## 2. Build the docker's image springboot
Use the following command before the build of springboot's image:
`docker run --name some-mysql --network my_network -v mysqlvol:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=testdb -p 3306:3306 -d mysql:8.2.0`
After building up the image, use this command to run the image correctly:
`docker run -e SPRING_PROFILES_ACTIVE=conteneur -d --network springbootapp --name springboot_container -p 8080:8080 podobox/springboot_image`

## 3. Build the docker's image angular
Before to build the image, think to modify the file `angular-16-crud-example-master/src/app/services/tutorial.service.ts`
Replace the line 
const baseUrl = 'http://mon-projet.com/api/tutorials';
by const baseUrl = 'http://localhost:8080/api/tutorials';

You can now acces to your application using the URL http://localhost:ANGULAR_PORT
