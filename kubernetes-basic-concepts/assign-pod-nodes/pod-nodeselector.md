[`nodeSelector`](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector) is a selector to assign a pod to a specific node. It is matching a node key/value pair ,also known as `Label`, telling the scheduler what is the node to fit the pod.

>**Note:** By default, Kubernetes adds some labels to the nodes such as `kubernetes.io/hostname`, `beta.kubernetes.io/arch` and so on. For further info read [Built-in node labels](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#interlude-built-in-node-labels)


## Discover node labels
First of all, we need to know what the node labels are:

`kubectl get nodes --show-labels`{{execute}}
