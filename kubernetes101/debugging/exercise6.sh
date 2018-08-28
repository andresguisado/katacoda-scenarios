cd /manifests
sleep 1
ls
kubectl delete -f liveness.yml
kubectl apply -f resource-quota.yml
kubectl apply -f exceeding-resource.yml
clear
