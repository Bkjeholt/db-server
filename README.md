# db-server

## Revision information
### 0.3 Revision
- Moves from mysql to a mariadb database image.
- Adapted to the docker health check functionality, indicating that the container are up and running.

## The deamon

```
docker run -d \
           --name=mysql-hic \
           --env MYSQL_ROOT_PASSWORD=Rft5-667g-3drTR-44DFv \
           --env MYSQL_DATABASE=hic \
           --env MYSQL_USER=admin \
           --env MYSQL_PASSWORD=akfjaaja34ffgtF \
           -v db-data:/var/lib/mysql \
           --restart=always \
           -p 3306:3306 \
           bkjeholt/db-server:<Applicable tag>
```

## create a volume to use
This is independent of the marget machine architecture
```
docker volume create --name=db-data
```
