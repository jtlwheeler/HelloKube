#!/bin/bash

kubectl delete deployment hello-kube-deployment
kubectl delete service hello-kube-service

eval $(minikube docker-env)
docker stop registry
docker rm registry