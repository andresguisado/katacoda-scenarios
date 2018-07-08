## Create a pod in the Contino namespace


```
apiVersion: v1
kind: Pod
metadata:
  name: contino-pod
  namespace: contino
spec:
  containers:
  - name: nginx
    image: nginx
```

**Let's create the above pod:** 

`kubectl apply -f contino-pod.yaml`{{execute}}

## Validation

**List our pod up:**

`kubectl get pods`{{execute}}

Oops! What's going on? I can't see my pod!

We need to specify the namespace from where we want to retrieve the pods:

`kubectl get pods -n contino`{{execute}}