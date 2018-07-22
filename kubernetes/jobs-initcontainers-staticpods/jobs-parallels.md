To create parallel jobs we can use ` spec.parallelism` to set how many pod can run in parallel. Also, we can setup a number of completations for the jobs implemented.

## Create Countdown Parallel Job

Look at the file `job-para-comp.yaml`{{open}}. This is the same previous `countdown` job but we added `spec.parallelism` and `spec.complettions`. The job will run 2 pods in parallel until reach 8 completions successfully.

`kubectl apply -f /manifests/jobs-parallels.yaml`{{execute}}

### Job status

It gives Kubernetes a few seconds to get the 8 completions and then check the job has been successfully completed 8 times:

`kubectl get jobs`{{execute}}

### Job Logs

In order to see the job's logs we need to know the pod created:

`kubectl get pods | grep countdown`{{execute}}

And then type:

`kubectl logs <some-above-pod-name>`

### Delete Job

`kubectl delete -f /manifests/jobs-parallels.yaml`{{execute}}

or 

`kubectl delete job countdown`{{execute}}
