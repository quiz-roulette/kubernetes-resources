#!/bin/sh

kubectl apply -f quiz-roulette-question-bank-graphql-deployment.yaml
kubectl apply -f quiz-roulette-question-bank-graphql-service.yaml

kubectl apply -f quiz-roulette-spring-cloud-api-gateway-deployment.yaml
kubectl expose deployment quiz-roulette-spring-cloud-api-gateway-deployment --type=LoadBalancer --name=quiz-roulette-spring-cloud-api-gateway-service

kubectl apply -f quiz-roulette-admin-crud-app-deployment.yaml
kubectl expose deployment quiz-roulette-admin-crud-app --type=LoadBalancer --name=quiz-roulette-admin-crud-service