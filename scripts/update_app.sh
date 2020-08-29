#!/bin/bash

eval $(minikube docker-env)

echo 'Building hellokube image.'
docker build . -t hellokube
docker tag hellokube localhost:5000/hellokube

echo 'Pushing hellokube image to local registry.'
docker push localhost:5000/hellokube

echo 'Restarting hello-kube-deployment.'
kubectl rollout restart deployment/hello-kube-deployment