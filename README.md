# Inception 🕟
<p align="center">
<img src="https://alphaville.github.io/optimization-engine/img/docker.gif">
 </p>

## What is Docker ?

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package.

## How Docker work ?

Docker uses a client-server architecture. The Docker client talks to the Docker daemon, which does the heavy lifting of building, running, and distributing your Docker containers. The Docker client and daemon can run on the same system, or you can connect a Docker client to a remote Docker daemon. The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface. Another Docker client is Docker Compose, that lets you work with applications consisting of a set of containers.

<p align="center">
<img src="https://miro.medium.com/max/1400/0*c9ljD66NqkOhhK_f">
</p>

For example : `[docker pull Oracle]`

When you type the command docker pull `oracle` in your terminal, Docker will start by contacting the Docker registry to check if there is an available image for the oracle operating system. If there is an image available, Docker will download the image and store it on your local machine.

1 - Docker client sends a request to the Docker daemon to pull the centos image from the default registry.<br>

2 - Docker daemon searches the registry for the centos image and checks if there is a more recent version of the image available.<br>

3 - If the image is not found locally, Docker daemon downloads the latest version of the centos image from the registry.<br>

4 - The centos image is downloaded in layers. Each layer represents a change to the file system of the container. Docker downloads only the layers that    				are not already present on your local machine, which makes the download process faster and more efficient.<br>
 
5 - Once the download is complete, Docker daemon stores the image in your local Docker image cache. The image can now be used to create containers based on the centos operating system.<br>
 

## What is component of Docker ?

<p align="center">
 <img src="https://miro.medium.com/max/678/1*uGdDnHQq6NVMcSO0DKAVAw.png">
 </p>

Docker works by using a combination of containerization technology and a client-server architecture to package and manage applications. Here are the key components of how Docker works:

1 - Docker Engine: This is the core component of Docker that runs on the host machine and manages the containers. Docker Engine consists of three main parts: a server, a REST API, and a command-line interface (CLI). The server listens for commands from the Docker CLI or the REST API, and then creates, starts, stops, or removes containers as needed.

2 - Docker Image: A Docker image is a read-only template that contains all the necessary files, libraries, and dependencies to run an application. Docker images are created using a Dockerfile, which is a text file that specifies the configuration and settings needed to build the image. Once an image is built, it can be shared and reused across different machines.

3 - Docker Container: A Docker container is a runnable instance of a Docker image. Containers are isolated from each other and from the host system, which means that applications running inside a container are self-contained and do not interfere with other containers or the host environment. Docker containers can be started, stopped, or restarted as needed, and they can be configured to use specific resources such as CPU, memory, and network bandwidth.

4 - Docker Registry: A Docker registry is a repository for storing and sharing Docker images. Docker Hub is the most popular public Docker registry, but organizations can also set up their own private registries to store and manage their own images.

## What is Docker compose ?

## TO DO LIST ✅.
> In order to finish the project smoothly, I decided to partition the tasks to do one after the other.

Here's the divided tasks for the project.
- [ ] Introduction to docker.
- [x] [Create a Dockerfile to build the NGINX image and enabling SSL with openssl](#create-dockerfile-for-nginx-and-enable-ssl)
- [ ] Create a Dockerfile to build the WordPress image. Also install php-fpm within the same container.
- [ ] Create 2 volumes. One for the database, and the other for the files of our website.
- [ ] Create a Dockerfile to build MariaDB image.
- [ ] Create the `docker-compose.yml` file. Within it, make a network that establishes the connection between all the above containers.


# Let's get to work
## Create Dockerfile for NGINX and Enable SSL
As said before, we will be using `debian:stable` image as a base image for all our docker containers.
