# Inception

## What is Docker ?

## How Docker work ?

## What is component of Docker ?

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
