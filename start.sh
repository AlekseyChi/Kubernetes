echo "Создание пароля"

eval $(minikube docker-env)

docker-compose pull

docker-compose build

kubectl create secret generic db-password --from-file=./db-password

kubectl apply -f service-db.yaml

kubectl apply -f deployment-db.yaml

kubectl apply -f deployment-flask.yaml

kubectl apply -f service-flask.yaml

eval $(minikube docker-env --unset)

