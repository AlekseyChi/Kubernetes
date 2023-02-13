echo "Создание пароля"

kubectl create secret generic db-password --from-file=./db-password

kubectl apply -f deployment-flask.yaml

kubectl apply -f service-flask.yaml

kubectl apply -f deployment-db.yaml

kubectl apply -f service-db.yaml
