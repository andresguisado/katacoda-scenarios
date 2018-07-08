Modify ```pod-namespace.yaml``` file, adding the following fields:

1. Add pods labels:
```
labels: 
  app: redis
  segment: backend
  company: mycompany
```
2. Modify docker image to the following one:
```
containers:
- name: redis
  image: redis
```
3. Configure redis port:
```
ports:
- name: redisport
  containerPort: 6379
  protocol: TCP
```

### Update Pod 

A pod can be updated by applying a yaml file with changes, let's apply our pod-namespace.yaml file with the above changes:

`kubectl apply -f pod-namespace.yaml`{{execute}}


### What happend? Didn't it work? 

Ok, let's review ports field at the [Kubernetes API Reference](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#container-v1-core) :

<p style="text-align:center;"><img src="/andresguisado/courses/kubernetes-basic-concepts/pods/assets/ports.png" alt="Ports"></p>


In Kubernetes there're some fields can't be updated, you can find them at the Kubernetes API Reference.

In order to update those fields, we should delete the pod and create it up again.

### Fixing it 

Delete the pod:

`kubectl delete pod happypanda -n dev-service1`{{execute}}

Apply the yaml file:

`kubectl apply -f pod-namespace.yaml`{{execute}}

Our happypanda pod is now running with labels, port specification and a new container image:

`kubectl describe pod happypanda --namespace dev-service1`{{execute}}
