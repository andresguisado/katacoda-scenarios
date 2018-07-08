[**Pod**](https://kubernetes.io/docs/concepts/workloads/pods/pod/) is the smallest concept we have in Kubernetes. It is not a container. Pod consist of one or more containers.

<img src="/andresguisado/courses/kubernetes-basic-concepts/pods/assets/pod.png" alt="Pod">


<img src="../assets/pod.png" alt="Pod">


![Pod](../assets/pod.png?raw=true "Pod")

Pods are running on [**namespaces**](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/). Kubernetes creates three namespaces in its bootstrapping process as follows:

* **kube-system**: Where runs Kubernetes controllers and management processes
* **kube-public**: It contains a single ConfigMap object, cluster-info, that aids discovery and security bootstrap (basically, contains the CA for the cluster). This object is readable without authentication.
* **default**: Namespace which is used to deployed any Kubernetes object by default.

Own namespaces can be created in order to limit resources and organaise your Pods.

[**Label**](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/) is a metadata to identify information. It can be used for queries.

**Volume** serves data to the pod.




