sleep 5
ls
kubectl run fix-me --image=nginx:3
kubectl create -f nginx-deployment.yml
clear