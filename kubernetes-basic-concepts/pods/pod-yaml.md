
Kubectl gives us a way to communicate with the Kubernetes API but most likely you are going to use YAML files in order to create cluster configuration and objects. 

By using a yaml file we are going to create a Pod. Let's begin!

## Kubernetes API Reference 

Every Kubernetes object has an API specification and this specification can be write it down in a YAML file.
In this exercise, we can check the Pod specification out at the [Kubernetes API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#pod-v1-core).

Therefore, Kubernetes API Reference is helping us out to configure Kubernetes object.

We are going to use the following Pod specification for this exercise:

```
apiVersion: v1
kind: Pod
metadata:
  name: happypanda
spec:
  containers:
  - name: nginx
    image: nginx
```

## Create a Pod

By using kubectl we authenticate against the Kubernetes API and apply our object into the Kubernetes Cluster:

`kubectl apply -f pod.yaml`{{execute}}

## Validation

In order to see our pod running we need to ask the Kubernetes API for the pods as follows:

`kubectl get pods`{{execute}}

Notice that it is running on the default namespace since we didn't set any namespace in our specification. Kubernetes uses default namespace to deploy objects when you don't specify this.

## Delete a Pod

There are two options here, we can use the same yaml file or a single command:

`kubectl delete -f pod-namespace.yaml`{{execute}}

or 

`kubectl delete pod happypanda`{{execute}}