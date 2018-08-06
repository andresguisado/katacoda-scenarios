To create a parallel job we can use ` spec.parallelism` to set how many pods we want to run in parallel and `spec.completions` to set how many job's completition we would like to achieve. 

## Create Countdown Parallel Job

Look at the file `job-para-comp.yaml`{{open}}.

This is the same previous `countdown` job but we have added `spec.parallelism` and `spec.completions`. 
The job will run 2 pods in parallel until it reaches 8 completions successfully.

`kubectl apply -f /manifests/jobs-parallels.yaml`{{execute}}

### Job status

Await for a few seconds to get the 8 completions and then check that the job has been successfully completed 8 times:

`kubectl get jobs`{{execute}}

### Job Logs

In order to see the job's logs, we need to get the job name:

`kubectl get jobs -o 'jsonpath={.items[0].metadata.name}'`{{execute}}

And then execute the following command to get the logs:

`kubectl logs `kubectl get jobs -o 'jsonpath={.items[0].metadata.name}'` `

### Delete Job

`kubectl delete -f /manifests/jobs-parallels.yaml`{{execute}}

or 

`kubectl delete job countdown`{{execute}}
