
This chapter provides an overview of Jobs, Cron Jobs, Init Containers and Static Pod in Kubernetes.


[Jobs resources](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/) create one or more pods and ensures that all of them they successfully terminate.

[Cron Jobs](https://kubernetes.io/docs/tasks/job/automated-tasks-with-cron-jobs/) resources are useful for creating periodic and recurring tasks, e.g running backups or sending emails.

[Init Containers](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/) are regular containers that run before app containers, they can run setup scripts not present in an app container. A pod can have one or more init containers apart of app containers.

The constraints of init containers are:

* They always run to completation
* Each one must complete successfully before the next one is started.


[Static Pods](https://kubernetes.io/docs/tasks/administer-cluster/static-pod/) 

