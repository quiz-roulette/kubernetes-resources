#!/bin/sh

kubectl delete deploy quiz-roulette-admin-crud-app
kubectl delete deploy quiz-roulette-question-bank-graphql
kubectl delete deploy quiz-roulette-spring-cloud-api-gateway-deployment

kubectl delete svc quiz-roulette-admin-crud-service
kubectl delete svc quiz-roulette-question-bank-graphql
kubectl delete svc quiz-roulette-spring-cloud-api-gateway-service