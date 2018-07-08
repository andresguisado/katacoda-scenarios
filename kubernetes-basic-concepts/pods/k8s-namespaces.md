**Namespaces** isolates pods to separate workloads from each other and set up resource constrainsts. It could fit with environment segregation.


## Discover Kubernetes namespaces 

Let's take a look at the initial Kubernetes namespaces:

`kubectl get namespace`{{execute}}

We can see three namespaces as follows:

<p style="text-align:center;"><img src="/andresguisado/courses/kubernetes-basic-concepts/pods/assets/namespaces.png" alt="Namespaces"></p>


### kube-system

This namespace has objects created by Kubernetes system:

`clear & kubectl get pods -n kube-system`{{execute}}

### kube-public

This namespace just contains a configmap which has the [bootstrapping and certificate](https://kubernetes.io/docs/reference/access-authn-authz/bootstrap-tokens/) information of the K8s cluster:

`clear & kubectl get pods -n kube-public`{{execute}}

`clear & kubectl get configmap -n kube-public  cluster-info -o yaml`{{execute}}

This namespace could be treated as a namespace to run any object which should be visible and readable throughout the whole cluster.

### default
Kubernetes sets this namespaces up out of the box to use it for objects with no other namespace:

`clear & kubectl get pods -n default`{{execute}}

This namespace doesn't have anyting special, except you can't delete it.