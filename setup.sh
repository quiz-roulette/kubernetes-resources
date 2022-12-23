#!/bin/sh

kubectl apply -f quiz-roulette-question-bank-graphql-deployment.yaml
kubectl apply -f quiz-roulette-question-bank-graphql-service.yaml

kubectl apply -f quiz-roulette-spring-cloud-api-gateway-deployment.yaml
kubectl expose deployment quiz-roulette-spring-cloud-api-gateway-deployment --type=LoadBalancer --name=quiz-roulette-spring-cloud-api-gateway-service

kubectl apply -f quiz-roulette-admin-crud-app-deployment.yaml
kubectl expose deployment quiz-roulette-admin-crud-app --type=LoadBalancer --name=quiz-roulette-admin-crud-service

kubectl apply -f quiz-roulette-quiz-player-view-app-deployment.yaml
kubectl expose deployment quiz-roulette-quiz-player-view-app-deployment --type=LoadBalancer --name=quiz-roulette-quiz-player-view-app-service

for i in `seq 1 10`;
do
    kubectl get pods
    kubectl get svc
    sleep 1
done