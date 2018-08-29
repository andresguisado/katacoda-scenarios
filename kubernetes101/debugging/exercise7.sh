cd /manifests
sleep 1
ls
kubectl delete -f exceeding-resource.yml
kubectl delete -f resource-quota.yml
kubectl apply -f pod-quota.yml
kubectl apply -f exceeding-pod.yml
clear
