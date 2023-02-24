<p align="center">
<img src="https://cdn.dribbble.com/users/1008970/screenshots/6140230/media/eb5621478dff02f1f0d6342998548c9b.gif">
</p>

# Inception

> Strengthen your system administration skills

> Learn Docker, by creating and building multiple Docker Images.

## What is a container ?
<p align="center">
<img src="https://wac-cdn.atlassian.com/dam/jcr:92adde69-f728-4cfc-8bab-ba391c25ae58/SWTM-2060_Diagram_Containers_VirtualMachines_v03.png?cdnVersion=797">
</p>

Containers are lightweight software packages that contain all your dependencies required to run and execute a certain application.

Meaning ?

If services and virtual machines had a kid they would name it Container.
To understand more, imagine that Containers are a virtual machine, but instead of virtualizing the hardware, we just virtualize-ish the OS, which the container engine is running on.
So in the case of the virtual machine, you will have to virtualize the hardware in order to have a new virtual machine. In the case of containers, you run directly on the host, using the its OS as a layer of virtualization. Thus you will have your app with its dependencies, without duplicating an existing hardware.

## Steps to finish the project.
> In order to finish the project smoothly, I decided to partition the tasks to do one after the other.

> I'm using debian as a base image for all the containers.

Here's the divided tasks for the project.

- [x] [Create a Dockerfile to build the NGINX image and enabling SSL with openssl](#create-dockerfile-for-nginx-and-enable-ssl)
- [ ] Create a Dockerfile to build the WordPress image. Also install php-fpm within the same container.
- [ ] Create 2 volumes. One for the database, and the other for the files of our website.
- [ ] Create a Dockerfile to build MariaDB image.
- [ ] Create the `docker-compose.yml` file. Within it, make a network that establishes the connection between all the above containers.


# Let's get to work
## Create Dockerfile for NGINX and Enable SSL
As said before, we will be using `debian:stable` image as a base image for all our docker containers.
