cd /manifests
sleep 1
ls
kubectl run crasher --image=rosskukulinski/crashing-app
clear

