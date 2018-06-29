**Pod** is the smallest concept we have in Kubernetes and it is not a container. Pod can consist of one or more containers.

## Tasks

Here is how looks like the pod frontend:

```
apiVersion: v1
kind: Pod
metadata:
  name: nginx-frontend
  namespace: contino
  labels:
    app: nginx
    segment: frontend
    company: contino
spec:
  containers:
  - name: nginx
    image: nginx
```

Deploy it: 

`kubectl apply -f pod-frontend.yaml`{{execute}}