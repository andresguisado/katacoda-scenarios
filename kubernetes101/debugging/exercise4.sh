cd /manifests
sleep 1
ls
kubectl delete -f missing-configmap.yml 
kubectl apply -f missing-secret.yml
clear
