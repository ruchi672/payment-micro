microk8s.kubectl create -f deployment-todo.yml
microk8s.kubectl create -f deployment-user.yml

microk8s.kubectl create -f service-todo.yml
microk8s.kubectl create -f service-user.yml

microk8s.kubectl create -f ingress.yml
