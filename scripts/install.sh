#!/bin/bash

echo 'Starting registry container in Minikube Docker daemon.'
eval $(minikube docker-env)
docker run -d -p 5000:5000 --restart always --name registry registry:2

echo 'Building hellokube image.'
docker build . -t hellokube
docker tag hellokube localhost:5000/hellokube

echo 'Pushing hellokube image to local registry.'
docker push localhost:5000/hellokube

echo 'Configuring Kubernetes.'
kubectl create -f hello-kube-local.yaml