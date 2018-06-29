**Pod** is the smallest concept we have in Kubernetes. It is not a container, Pod can consist of one or more containers.

## Tasks

We are using a nginx docker image to create our frontend pod, **here is how looks like the pod frontend:**

```
apiVersion: v1
kind: Pod
metadata:
  name: frontend-pod
  namespace: contino
spec:
  containers:
  - name: nginx
    image: nginx
```

**To deploy it run the folllowing command:** 

`kubectl apply -f pod-frontend.yaml`{{execute}}