## Tasks

1- Add three labels:
```
app: redis
company: contino
```
2- Configure 80 port:
```
ports:
      - name: redisport
        containerPort: 6379
        protocol: TCP
```
3- Modify docker image to the following one:
```

```


**Here is how looks like the pod frontend after the modifications:**

```
apiVersion: v1
kind: Pod
metadata:
  name: frontend-pod
  namespace: contino
  labels:
    app: redis
    segment: frontend
    company: contino
spec:
  containers:
  - name: redis
    image: redis
    ports:
    - name: redisport
      containerPort: 6379
      protocol: TCP
```

**To deploy it run the folllowing command:** 

`kubectl apply -f frontend-pod2.yaml`{{execute}}

## Validation

**Describe frontend pod up:**

`kubectl describe pod frontend-pod2 --namespace contino`{{execute}}