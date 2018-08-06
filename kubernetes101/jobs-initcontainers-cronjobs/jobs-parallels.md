To create a parallel job we can use ` spec.parallelism` to set how many pods we want to run in parallel and `spec.completions` to set how many job's completition we would like to achieve. 

## Create Countdown Parallel Job

Look at the file `jobs-parallels.yaml`{{open}}.

This is the same `countdown` job then the previous scenario but we have added `spec.parallelism` and `spec.completions`. 

The job will run 2 pods in parallel until it reaches 8 completions successfully.

Create countdown parallel job:

`kubectl apply -f /manifests/jobs-parallels.yaml`{{execute}}

### Job status

Await for a few seconds to get the 8 completions and then check the status of the job:

`kubectl get jobs`{{execute}}

You should see a result like:

`
NAME        DESIRED   SUCCESSFUL   AGE
countdown   8         8            16s
`

### Job Logs

In order to see the job's logs, we need to get the job name:

`kubectl get pods -o 'jsonpath={.items[0].metadata.name}'`{{execute}}

And then execute the following command to get the logs:

```
kubectl logs `kubectl get pods -o 'jsonpath={.items[0].metadata.name}'`
```{{execute}}

### Delete Job

`kubectl delete -f /manifests/jobs-parallels.yaml`{{execute}}

or 

`kubectl delete job countdown`{{execute}}
