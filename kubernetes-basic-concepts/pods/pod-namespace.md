
Click on the ```pod-namespace.yaml``` file that you can find in the editor panel on the right.

Notice that happy panda pod has been configured to be scheduled in **dev-service1** namespace.

Let's apply this yaml file:

`kubectl apply -f pod-namespace.yaml`{{execute}}

## Validation

Let's have a look at pods running in **dev-service1** namespace:

`kubectl get pods -n dev-service1`{{execute}}

Great! happypanda pod is running in dev-service1!
