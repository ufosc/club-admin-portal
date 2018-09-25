# Docker Setup

This is a walk through of how this Docker container was created. It should help with maintenance as well as creating new containers.

## Set Up

Make sure [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/) and [Docker compose](https://docs.docker.com/compose/install/) are installed.

Run a [Node container](https://hub.docker.com/_/node/).

```bash
docker run -it -p 8080:8080 -v "$(pwd)":/app -w /app --rm --name vue-test node:10.11.0-alpine /bin/sh
```
- "-it"
	- Interactive mode, so you can type in it
- "-p 8080:8080"
	- Connect port 8080 on both machines
- "-v "$(pwd)":/app"
	- Mount your current directory to the Docker container. Files will be synced
- "-w /app"
	- Set the working directory in the container to /app
- "--rm"
	- Kill container after it is closed
- "--name vue-test"
	- Name the container vue-test
- "node:10.11.0-alpine"
	- Use the base Node (version 10.11.0) container with Alpine Linux (a small Linux distribution)
- "/bin/sh"
	- Start it using the shell, so you can interact with it (by default, the container starts Node)

This allows you use node tools (like npm) without having to install any tools (aside from Docker). In this case, we used the [Vue CLI guide](https://cli.vuejs.org/guide/).

## Dockerfile

Using this [Vue Docker example](https://vuejs.org/v2/cookbook/dockerize-vuejs-app.html), we put together the basic [Dockerfile](../Dockerfile). It is the instructions for creating a container specifically for the admin portal. Every change made requires the Dockerfile to be re-built and re-run.

To build

```bash
docker build -t club-admin-portal .
```
- "-t"
	- Name the image club-admin-portal

To run

```bash
docker run -it -p 8080:8080 --rm --name club-admin-portal-dev club-admin-portal
```
- "--name"
	- Name the current container club-admin-portal-dev

## Docker Compose

Docker compose is more powerful (and quicker to type) then using the Dockerfile directly. We have set up the Docker compose to auto-update as you write code, so you don't have to rebuild so frequently.

To run

```bash
docker-compose up
```

To stop

```bash
docker-compose down
```

To update if configs change (like tslint.json or jest.config.js)

```bash
docker-compose up --build
```

To unit test

```bash
docker-compose run vue npm run test:unit
```

To end to end test

```bash
docker-compose run vue npm run test:e2e
```
