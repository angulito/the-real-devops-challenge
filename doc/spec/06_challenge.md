# Final Challenge: Deploy it on kubernetes

## Solution

We have deployed the application to Google Cloud. To avoid extra costs (because of this is a challenge and it is not a real application), we are going to explain here the followed process with images where you can see the services running on a Kubernetes cluster.

We have deployed the Kubernetes services to the cluster using the `kubectl` tool, and here there are the executed commands in order:

- `kubectl create -f kubernetes/service/mongo-master-service.yaml`
- `kubectl create -f kubernetes/service/app-service.yaml`
- `kubectl create -f kubernetes/controller/mongo-master-controller.yaml`
- `kubectl create -f kubernetes/controller/mongo-seed-job.yaml`
- `kubectl create -f kubernetes/controller/app-controller.yaml`

The result is that we have a Kubernetes cluster:

![Kubernetes cluster](/doc/images/cluster.png)

Where we have the following services deployed:

![Kubernetes services](/doc/images/services.png)

And the following controllers:

![Kubernetes cluster](/doc/images/controllers.png)

So we can access to the `http://35.233.98.0/` endpoint, where a load balancer redirects the port `80` to the app port `8080`. Here there is the screenshots for some endpoint calls examples:

![Endpoint gets restaurants](/doc/images/endpoint-get-restaurants.png)
![Endpoint gets a restaurant](/doc/images/enpoint-get-restaurant.png)
![Endpoint gets a not found restaurant](/doc/images/endpoint-get-not-found-restaurant.png)