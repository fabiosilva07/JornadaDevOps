git clone https://gitlab.com/studies64/projeto-cicd-php.git

cd projeto-cicd-php

kubectl apply -f .\secrets.yml

kubectl apply -f .\deployment.yml

kubectl apply -f .\services.yml

minikube service --url app-php-load