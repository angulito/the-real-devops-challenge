# Challenge 4: Dockerize the database

## Solution

Check the [docker-compose](/docker-compose.yml) file where you can see the `mongo` and `mongo-express` services, which are used for deploying the database and checking the admin config for the database, respectively.

Also we have created the service `mongo-seed` throught a [docker image](/mongo-seed/Dockerfile) for loading data to the `restaurant` collection into the mongo database `the-real-devops-challenge`.