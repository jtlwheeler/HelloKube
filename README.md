# Hello Kube
Introduction to Kubernetes with a simple ASP.NET Core web service.

## Local
1. Install [Docker](https://docs.docker.com/get-docker/.)
2. Install [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/).
3. Start Minikube.
```
minikube start
```
4. Deploy to Kubernetes
```
kubectl create -f hello-kube.yaml
```
5. Start tunnel to service. This command must continue to run in order to access the endpoint. A random port will be assigned.
```
minikube service hello-kube-service --url
```
6. Use URL to access web service.
