# Challenge 5: Docker Compose it

## Solution

Check the [docker-compose](/docker-compose.yml) file. Here we have the services:
- `challenge-app`: builds the docker image for this [Dockerfile](/Dockerfile) and set the `MONGO_URI` environment variable. This service depends on the `mongo` and `mongo-seed` services.
- `mongo`: deploys the database with a persistent volume.
- `mongo-express`: help us to manage the database administration. This service depends on the `mongo` service.
- `mongo-seed`: job to load data to the `restaurant` collection for the mongodb. This service depends on the `mongo` service and we need to wait to the database to be available, because sometimes the mongodb is up but the databases and collections are not available yet.