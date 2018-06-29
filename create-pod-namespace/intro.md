**Pod** is the smallest concept we have in Kubernetes and it is not a container. Pod can consist of one or more containers.

**Namespaces** is the way to isolate Pods and separate workloads from each other and resource constrainst. It could fit with environment segregation. Kubernetes is coming with a default namespace called kube-system.

In this scenario you will create a namespace called contino then you will deploy a pod into contino namespace.
