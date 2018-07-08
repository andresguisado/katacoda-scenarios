We are going to update our happypanda pod running in **dev-service1** namespace and to do that you need to apply ```pod-update.yaml```.

Hovwever, let's take a look at the file first by clicking on it from the editor we can find on the right.

Put your attention on these three new specifications:

1. Pods labels in the metadata section
2. Container image in the containers section to
3. Pod ports in the containers section


### Update Pod 

A pod can be updated by applying a yaml file, let's apply our ```pod-update.yaml``` file with the above changes:

`kubectl apply -f pod-namespace.yaml`{{execute}}


### Didn't it work? What happend?

Ok, let's review ports field at the [Kubernetes API Reference](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#container-v1-core) :

<p style="text-align:center;"><img src="/andresguisado/courses/kubernetes-basic-concepts/pods/assets/ports.png" alt="Ports"></p>


In Kubernetes, there're some fields can't be updated, you can find them at the Kubernetes API Reference.

In order to update those fields, we should delete the pod and create it up again.

### Fixing it 

Delete the pod:

`kubectl delete pod happypanda -n dev-service1`{{execute}}

Apply the yaml file:

`kubectl apply -f pod-update.yaml`{{execute}}

Check it out:

`kubectl describe pod happypanda --namespace dev-service1`{{execute}}

Our happypanda pod is now running with labels, port specification and a new container image!

`kubectl get pod -n dev-service1`{{execute}}

