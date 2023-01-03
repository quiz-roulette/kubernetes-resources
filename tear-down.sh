#!/bin/sh

### Tear Down Ingress and related
kubectl delete ingress question-bank-graphql-ingress

kubectl delete crd

kubectl delete serviceaccounts kong-serviceaccount -n kong 

kubectl delete role kong-leader-election -n kong

kubectl delete clusterroles kong-ingress -n kong
kubectl delete clusterroles kong-ingress-gateway -n kong
kubectl delete clusterroles kong-ingress-knative -n kong
kubectl delete clusterroles kong-leader-election -n kong

kubectl delete secrets kong-serviceaccount-token -n kong

kubectl delete rolebindings kong-leader-election -n kong

kubectl delete clusterrolebindings kong-ingress-gateway -n kong
kubectl delete clusterrolebindings kong-ingress-knative -n kong
kubectl delete clusterrolebindings kong-ingress -n kong

kubectl delete -n kong --all all

kubectl delete namespace kong

### Delete everything else.
kubectl delete deploy quiz-roulette-admin-crud-app
kubectl delete deploy quiz-roulette-question-bank-graphql
kubectl delete deploy quiz-roulette-quiz-player-view-app-deployment
kubectl delete deploy quiz-transaction-deployment
kubectl delete deploy user-service-deployment
kubectl delete deploy legacy-service-deployment
kubectl delete deploy player-game-deployment
kubectl delete deploy event-service-deployment

kubectl delete svc quiz-roulette-admin-crud-service
kubectl delete svc quiz-roulette-question-bank-graphql
kubectl delete svc quiz-roulette-quiz-player-view-app-service
kubectl delete svc quiz-transaction-service
kubectl delete svc user-service-service
kubectl delete svc legacy-service-service
kubectl delete svc player-game-service
kubectl delete svc event-service-service