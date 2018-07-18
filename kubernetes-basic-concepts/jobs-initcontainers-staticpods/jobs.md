Jobs are used to running a batch job, supporting parallel jobs until reach a specific number of completions.

Therefore with Jobs, we can run a work items such as frames to be rendered, files to be transcoded, ranges of keys in a NoSQL database to scan, and so on.

Take a look at [Jobs Api reference](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.11/#job-v1-batch) to see how to build a job resource in Kubernetes.

Look at the file `job.yaml`{{open}}. This example create a job which run a bash command specifying parallelism and completions.

Create a job:

`kubectl apply -f /manifests/job.yaml`{{execute}}

