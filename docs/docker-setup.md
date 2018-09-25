# Docker Setup

```bash
docker run -it -p 8000:8000 -v "$(pwd)":/app -w /app --rm --name vue-test node:10.11.0-alpine /bin/sh
```

Follow the [Vue CLI guide](https://cli.vuejs.org/guide/)

Vue [Docker example](https://vuejs.org/v2/cookbook/dockerize-vuejs-app.html)

```
docker build -t club-admin-portal .
```

```
docker run -it -p 8080:8080 --rm --name club-admin-portal-dev club-admin-portal
```

```
docker-compose run vue npm run test:unit
```

```
docker-compose run vue npm run test:e2e
```

```
docker-compose up
```

```
docker-compose down
```
