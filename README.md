# kubernetes_jenkins_node source project

## Requirements:

- NodeJs 8+
- Docker installed locally([docker desktop](https://www.docker.com/products/docker-desktop) or [docker - toolbox](https://docs.docker.com/docker-for-windows/docker-toolbox/) on windows)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/)

We have already built a Docker image  (```docker build -t <your username>/nodejs-helloworld .```) and pushed it to DockerHub ([here](https://hub.docker.com/repository/docker/tormentoras/nodejs-kub)).

use Kubectl command to apply the yaml file:
```
kubectl apply -f deployment.yaml
```

The outpust should be:
```
deployment.apps/nodejs-deployment created
service/nodejs-service unchanged
```

To see the output of the pod run 
```
command minikube service nodejs-service
```

This opens up the url in the browser. Here you see the output as “Hello Guys!!”