Background
================
The ACME company wants the candidate to deploy their new super duper web application to AWS
or Azure. The company employs some pretty interesting developers and they can on occasion play
russian roulette on the instances. The candidate should keep this in mind (Don't ask why they have
access to production).
____

## Dependencies
The application has no dependencies.

Problem 1
================
Use any tool to be able to create a repeatable and predictable product deployment.
Restrictions
There are no restrictions and the candidate should see this as an opportunity to showcase their
ability to perform repeatable and predictable deployments to one of the cloud providers listed
(AWS/Azure).
Verification
The deployment can be verified by issuing a web request to http://{ip}:8080/success

## Solution
1. The solution is achieved using Elastic Beanstalk in AWS.
2. Assume that the Jenkins server has Elastic Beanstalk CLI installed.
3. Assume that the Elastic Beanstalk application is initialized using 'eb init' command with Docker as base platform.
4. The application artifact is pushed to Dockerhub by building the image using "Dockerfileapp" and then pushing it to prabhusiva619/aws-pipeline repo.
5. A connection between Jenkins and Dockerhub is established through webhook, which in turn will trigger the Jenkins pipeline.
6. In our case the pipeline is parameterized as we could only simulate artifact generation, so the version of the artifact is sent as parameter to Jenkins.
7. Jenkins then builds another Dockerfile using the passed parameter.
8. Finally the 'eb deploy' command is used to deploy the new artifact to Elastic Beanstalk.

Problem 2
================
The application has been updated and the candidate is required to deploy a new version of the
application and take into consideration that downtime should be minimized.

## Solution
./problem_2
