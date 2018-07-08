Create a namespace can be done by a single command. 

Let's create **dev-service1** namespace:

`kubectl create namespace dev-service1`{{execute}}

Or you can create a YAML file and apply it, just any other Kubernetes resource:

```
kind: Namespace
apiVersion: v1
metadata:
    name: test
```

`kubectl apply -f test-namespace.yaml`{{execute}}

List namespaces up:

`kubectl get namespaces`{{execute}}

## Delete a Namespace

There are two options here, we can use the same yaml file or a single command:

`kubectl delete -f test-namespace.yaml`{{execute}}

 or 
 
`kubectl delete namespace test`{{execute}}

We are not going to remove ```dev-service1``` namespace as we will use it.