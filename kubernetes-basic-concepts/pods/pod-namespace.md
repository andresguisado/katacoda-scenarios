
Click on the ```pod-namespace.yaml``` file that you can find in the editor panel on the right. Notice that it has been configured to schedule a pod in *dev-service1* namespace.

Let's apply this yaml file:

`kubectl apply -f pod-namespace.yaml`{{execute}}

## Validation

List pods up from dev-service1 namespace:

`kubectl get pods -n dev-service1`{{execute}}
