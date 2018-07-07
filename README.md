## Nodejs helloworld app using Kubernetes

```eval $(minikube docker-env)```

Later, when you no longer wish to use the Minikube host, you can undo this change by running eval $(minikube docker-env -u).

```eval $(minikube docker-env)```

To start first application,

Build your Docker image, using the Minikube Docker daemon:

```docker build -t hello-node:v1 .```

To create the app,

```kubectl run hello-node --image=hello-node:v1 --port=8080 --image-pull-policy=Never```

To view the deployments,

```kubectl get deployments```

To view the pods,

```kubectl get pods```

To view cluster events,

```kubectl get events```

View the kubectl configuration:

``` 
kubectl config view

kubectl expose deployment hello-node --type=LoadBalancer

kubectl get services

minikube service hello-node
```

This automatically opens up a browser window using a local IP address that serves your app and shows the “Hello World” message.

Edit your server.js file to return a new message:

```response.end('Hello World Again!');```

Build a new version of your image (mind the trailing dot):

```docker build -t hello-node:v2 .```

Update the image of your Deployment:

```kubectl set image deployment/hello-node hello-node=hello-node:v2```

Run your app again to view the new message:

```minikube service hello-node```
