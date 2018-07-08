## Tasks

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

**To deploy it run the folllowing command:** 

`kubectl apply -f pod-namespace.yaml`{{execute}}

## Validation

**Describe frontend pod up:**

`kubectl describe pod happy-panda --namespace dev-service1`{{execute}}