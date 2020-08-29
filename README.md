# Hello Kube
Introduction to Kubernetes with a simple ASP.NET Core web service.

## Local Development
The local development environment will use Minikube and a local Docker container [registry](https://hub.docker.com/_/registry) to push the image locally. The registry will run within Minikube's Docker daemon so that Kubernetes can pull the Docker image as specified in [hello-kube.yaml](./hello-kube.yaml) configuration file.

### Install
1. Install [Docker](https://docs.docker.com/get-docker/.)
2. Install [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/).
3. Start Minikube.
```
minikube start
```
4. Execute install script
```
./scripts/install.sh
```
5. Start tunnel to service. This command must continue to run in order to access the endpoint. A random port will be assigned.
```
minikube service hello-kube-service --url
```
6. Use URL to access web service.

### Update App After Changes
```
./scripts/update_app.sh
```

### Uninstall
```
./scripts/uninstall.sh
```