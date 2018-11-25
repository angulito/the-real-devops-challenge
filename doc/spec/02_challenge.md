# Challenge 2: Test the application in any cicd system

## Solution

Here we are using the [CircleCI service](https://circleci.com/) which is free for open source projects. For that, we have created the [pipeline file](/.circleci/config.yml). Here we run the steps:
- tests: executes the tests using the docker image `painless/tox`.
- build: build the docker image and push it to the docker hub public repository.
- deploy (only in master branch).

Check the pipeline running on the [CircleCI webpage](https://circleci.com/gh/angulito/the-real-devops-challenge).