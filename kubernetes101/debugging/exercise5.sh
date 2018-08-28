cd /manifests
sleep 1
ls
kubectl delete -f missing-secret.yml 
kubectl apply -f liveness.yml
clear
