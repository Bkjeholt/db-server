# mysql
```
docker run -d 
           --name=mysql-hic 
           --env MYSQL_ROOT_PASSWORD=Rft5-667g-3drTR-44DFv 
           --env MYSQL_DATABASE=hic 
           --env MYSQL_USER=admin 
           --env MYSQL_PASSWORD=akfjaaja34ffgtF 
           -v mysql-hic-data-vol:/var/lib/mysql 
           --restart=always 
           -p 3306:3306 
           mysql 
```
## create a volume to use

```
docker volume create --name=mysql-hic-data-vol
```
