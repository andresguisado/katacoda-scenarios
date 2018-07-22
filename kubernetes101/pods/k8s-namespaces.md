**Namespaces** isolates pods to separate workloads from each other and it gives you the capability of setting up resource constrainsts on it. It could fit with environment segregation.

## Discover Kubernetes namespaces 

Let's take a look at the initial Kubernetes namespaces:

`kubectl get namespace`{{execute}}

By default, Kubernetes comes with three namespaces. We can see them here:

<p style="text-align:center;"><img src="/andresguisado/courses/kubernetes101/pods/assets/namespaces.png" alt="Namespaces"></p>

### kube-system

This namespace has objects created by Kubernetes system:

`clear & kubectl get pods -n kube-system`{{execute}}

Pods inside of this namespace are needed to make Kubernetes works, such as controllers and add-ons natively integrated with Kubernetes which we will talk later on

> **Note:** Usually each cloud provider will run specific implementation pods in this namespace too - so don't worry if the `kube-system` namespace differs between clusters/cloud providers.

### kube-public

This namespace just contains a configmap which has the [bootstrapping and certificate](https://kubernetes.io/docs/reference/access-authn-authz/bootstrap-tokens/) information of the K8s cluster:

`clear & kubectl get pods -n kube-public`{{execute}}

You don't see anything running in this namespace but we can see a ```cluster-info``` configmap:

`clear & kubectl get configmap -n kube-public  cluster-info -o yaml`{{execute}}

In addtion, this namespace might be treated as a namespace to run any object which should be visible and readable throughout the whole cluster since it is visible and readable from all parts of the Kubernetes cluster.

### default

All objects created without specifying a namespace will automatically be created in the `default` namespace.

This namespace is empty and doesn't contain any objects:

`clear & kubectl get pods -n default`{{execute}}

One thing to note about the `default` namespace is that it can't be deleted, unlike other namespaces within the Kubernetes cluster.