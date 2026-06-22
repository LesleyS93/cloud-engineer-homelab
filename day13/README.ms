# Day 13 - Building Custom Docker Images



## Objective



Learn how to build and deploy custom Docker images using Dockerfiles.



## Tasks Completed



- Created a Dockerfile

- Built a custom image

- Hosted a custom website

- Ran containers from custom images

- Created image versions

- Tested deployments



## Commands Used



```bash

docker build

docker run

docker images

docker inspect

docker stop

docker rm

```



## Screenshots



Stored in:



day13/screenshots/



### Included Screenshots



- Dockerfile

- Build output

- Image list

- Running containers

- Website v1

- Website v2

- Image inspection



## Skills Learned



- Dockerfiles

- Image creation

- Image versioning

- Container deployment

- Application packaging



## Cloud Relevance



Custom Docker images are used for:



- Application deployment

- CI/CD pipelines

- Kubernetes workloads

- Microservices

- Cloud-native platforms



## Notes



Today I learned how to build and deploy my own Docker images instead of only using public images

## Troubleshooting



### Issue 1: Docker Build Failed - nginx:Latest Not Found



**Error:**



```bash

failed to resolve reference 'docker.io/library/nginx:Latest': not found

```



**Cause:**



Docker image tags are case-sensitive. The Dockerfile used `nginx:Latest` instead of `nginx:latest`.



**Incorrect:**



```dockerfile

FROM nginx:Latest

```



**Correct:**



```dockerfile

FROM nginx:latest

```



**Solution:**



1. Edit the Dockerfile.

2. Change `Latest` to `latest`.

3. Rebuild the image:



```bash

docker build -t cloudlab-nginx:v1 .

```



4. Verify the image was created:



```bash

docker images

```



**Result:**



The custom Nginx image built successfully.



---



### Issue 2: Verify Running Containers



To check whether the container is running:



```bash

docker ps

```



To view all containers including stopped ones:



```bash

docker ps -a

```



**Result:**



Confirmed the Nginx container was running and listening on port 8080.



---



Issue 3: Verify Available Docker Images

To check locally stored images:

docker images

Result:

Verified that the required base image (nginx:latest) was available and the custom image (cloudlab-nginx:v1) was successfully created.
