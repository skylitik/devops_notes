## Scenario
* Multi Tier Application Stack
* Running on VM's
* Regular Deployment
* Continuous Changes
## Problem
* High CapEx & OpEx
* Human Errors in deployment
* Not compatible with microservice architecture
* Resource Wastage
* Not portable, Env not in syncs
## Solution
* Containers
* Consumes Low Resource
* Suits very well for microservice design
* Deployment via Images
* Same Container Images across environment
* Reusable & Repeatable
___
## Steps
* Steps to setup our stack services
* Find right Base image from dockerhub
* Write Dockerfile to customize Images
* Write docker-compose.yml file to run multi containers.
* Test it & Host Images on Dockerhub