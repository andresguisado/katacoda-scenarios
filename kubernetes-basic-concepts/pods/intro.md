**Pod** is the smallest concept we have in Kubernetes. It is not a container. Pod consist of one or more containers.

<img src="/andresguisado/courses/kubernetes-basic-concepts/pods/assets/pod.png" alt="Pod">

Pods are running on **namespaces**. Kubernetes creates three namespaces in the bootstrapping process as follows:

* **kube-system**: Where runs Kubernetes controllers and management processes
* **kube-public**: It contains a single ConfigMap object, cluster-info, that aids discovery and security bootstrap (basically, contains the CA for the cluster). This object is readable without authentication.
* **default**: Default namespaces which is used when is deployed any Kubernetes object.

Other namespaces can be created in order to isolate Pods to separate workloads from each other and set up resources constraints. It could fit with environment segregation.





