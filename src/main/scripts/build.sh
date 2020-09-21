cd ../../../todo-microservice
mvn package
sudo docker build -t ruchi672/todomicroservice:latest .
sudo docker push ruchi672/todomicroservice:latest

