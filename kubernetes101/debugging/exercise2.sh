sleep 1
ls
kubectl delete deploy fix-me 
kubectl delete -f nginx-deployment.yml 
kubectl run crasher --image=rosskukulinski/crashing-app
clear

