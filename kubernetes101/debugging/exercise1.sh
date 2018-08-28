sleep 1
cd /manifests
ls
kubectl run fix-me --image=nginx:3
kubectl apply -f nginx-deployment.yml
clear