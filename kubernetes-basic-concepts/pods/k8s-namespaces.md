**Namespaces** isolates Pods to separate workloads from each other and set up resource constrainsts. It could fit with environment segregation.


## Discover Kubernetes namespaces 

Let's take a look at the initial Kubernetes namespaces:

`kubectl get namespace`{{execute}}

We can see three namespaces as follows:

<p style="text-align:center;"><img src="/andresguisado/courses/kubernetes-basic-concepts/pods/assets/namespaces.png" alt="Namespaces"></p>


### kube-system

This namespace has object created by Kubernetes system:

`kubectl get pods -n kube-system`{{execute}}

### kube-public

This namespace just contains a configmap which has the [bootstrapping and certificate](https://kubernetes.io/docs/reference/access-authn-authz/bootstrap-tokens/) information of the K8s cluster:

`kubectl get pods -n kube-public`{{execute}}

`kubectl get configmap -n kube-public  cluster-info -o yaml`{{execute}}

This namespace could be treated as a namespace to run any object which should be visible and readable throughout the whole cluster.

### default

The default namespace for objects with no other namespace:

`kubectl get pods -n kube-system`{{execute}}