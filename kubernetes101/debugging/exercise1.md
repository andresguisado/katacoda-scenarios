There're two broken pods.

Also, try to create this service which won't start:

`cat clusterip-service.yml;echo`{{execute}}

**Remember** - In order to troubleshoot you want to use some of these followings k8s commands:

```
kubectl describe deployment/<deployname>
kubectl describe replicaset/<rsname>
kubectl get pods
kubectl get deployments
kubectl get replicaset
kubectl describe pod/<podname>
kubectl logs <podname> --previous
kubectl get events
```

[**k8s cheatsheet**](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
