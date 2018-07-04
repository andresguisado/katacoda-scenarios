Pod is the smallest concept we have in Kubernetes. It is not a container. Pod consist of one or more containers.

<img src="/andresguisado/courses/kubernetes-basic-concepts/pods/assets/pod.png" alt="Pod">

Pods are running on namespaces. Kubernetes has its own namespace called kube-system where runs other pods.

Also Kubernetes creates a "default" namespace that is the one which is used by default when we deploy any k8s object.
    


