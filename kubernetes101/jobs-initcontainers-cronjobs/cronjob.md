[Cron Job resources](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/) run a job periodically on a given schedule, written in a `Cron` format.

## Create Hello Cron Job

Look at the file `cronjob.yaml`{{open}}. This example create a job every minute which prints the current time and a hello message.

`kubectl apply -f /manifests/cronjob.yaml`{{execute}}

### Cron Job status

After creating the cron job you can see that it hasn't been scheduled to execute yet(`LAST-SCHEDULE`):

`kubectl get crojob hello`{{execute}}

Watch the job until it runs for the firts time:

`kubectl get jobs -watch`{{execute}}

Check the cron job again, you should see that the cronjob has been scheduled at the time specified in `LAST-SCHEDULE`:

`kubectl get cronjob hello`{{execute}}

### Cron Job Logs

In order to see the job's logs, we need to know the pod created:

`kubectl get cronjob -o 'jsonpath={.items[0].metadata.name}'`{{execute}}

And then:

```
kubectl logs `kubectl get cronjob -o 'jsonpath={.items[0].metadata.name}'`
```

### Delete Cron Job

`kubectl delete cronjob hello`{{execute}}
