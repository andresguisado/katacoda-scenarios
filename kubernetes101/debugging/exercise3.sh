cd /manifests
sleep 1
ls
kubectl delete deploy crasher 
kubectl apply -f missing-configmap.yml
clear

