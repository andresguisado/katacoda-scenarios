## Create a pod in the Contino namespace

We are using a nginx docker image to create our pod:

```
apiVersion: v1
kind: Pod
metadata:
  name: contino-pod
spec:
  containers:
  - name: nginx
    image: nginx
```

**Let's create the above pod:** 

`kubectl apply -f contino-pod.yaml`{{execute}}

## Validation

**List pods up:**

`kubectl get pods`{{execute}}

As we didn't set any namespaces, Kubernetes uses default namespace to deploy it.