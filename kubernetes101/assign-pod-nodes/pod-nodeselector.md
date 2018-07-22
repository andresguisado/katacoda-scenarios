[`nodeSelector`](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector) is a selector to assign a pod to a specific node. It is matching a node key/value pair ,also known as `Label`, telling the scheduler what is the node to fit the pod.

>**Note:** By default, Kubernetes adds some labels to the nodes such as `kubernetes.io/hostname`, `beta.kubernetes.io/arch` and so on. For further info read [Built-in node labels](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#interlude-built-in-node-labels)

## Schedule happypanda pod to node01(disk=ssd)


### Discover node labels
First of all, we need to know what the node labels are:

`kubectl get nodes --show-labels`{{execute}}

### Add a new node label

Adding a `disk=ssd` label to node01:

`kubectl label nodes node01 disk=ssd`{{execute}}

Check the `disk=ssd` label that we've just added is on node01:

`kubectl get nodes --show-labels`{{execute}}

### Assign happypanda pod to node01, matching `disk:ssd` label

Look at the file `pod-nodeselector.yaml`:

`cat /manifests/pod-nodeselector.yaml`{{execute}}

Note `nodeSelector` is matching `disk:ssd` label and then the scheduler will fit this pod on any node with this label.

Create `happy panda` pod:

`kubectl apply -f /manifests/pod-nodeselector.yaml`{{execute}}

Check tha `happy panda` has been successfully scheduled on node01:

`kubectl get pods -o wide`{{execute}}

### Deleting happy panda pod and label

Delete `happy panda` pod:

`kubectl apply -f /manifests/pod-nodeselector.yaml`{{execute}} 

or 

`kubectl delete pod happypanda`{{execute}}

Remove label from node01:

`kubectl label node node01 disk-`{{execute}}

