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

`kubectl apply -f pod-in-namespace.yaml`{{execute}}