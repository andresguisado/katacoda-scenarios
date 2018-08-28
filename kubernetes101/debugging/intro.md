## Overview


 You should use the following commands to figure out why the services, deployments and pods are not working correctly:
 
```
kubectl describe deployment/<deployname>
kubectl describe replicaset/<rsname>
kubectl get pods
kubectl get deployments
kubectl get replicaset
kubectl describe pod/<podname>
kubectl logs <podname> --previous
```
