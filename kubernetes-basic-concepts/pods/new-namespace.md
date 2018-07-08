Create a namespace can be done by a single command. 

Let's create **dev-service1** namespace:

`kubectl create namespace dev-service1`{{execute}}

List namespaces up:

`kubectl get namespaces`{{execute}}

Or you can create a YAML file and apply it, just any other Kubernetes resource:

```
kind: Namespace
apiVersion: v1
metadata:
    name: test
```

`kubectl apply -f test-namespace.yaml`{{execute}}