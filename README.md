Build, Run & Connect
--------------------
Launch a command line terminal in the base of folder of this project and execute the following command to build and start all the containers in the Docker Compose project:
```
docker-compose up --build -d
```
Connect to the running MongoDB cluster from the MongoDB Shell (the shell will attempt to connect to the first of the two mongos endpoints):
```
mongosh --port 27017
sh.status()`
```

Note: Use port 27018 instead, above, if you want to connect to the second mongos endpoint.

Tips
-------
To show all the running docker containers for this Docker Compose project, run:
```
docker-compose ps
```
To show the container logs for one of the mongos routers, run:
```
docker-compose logs mongos-router0
```
To execute a terminal session directly in one of the mongos containers and then execute the MongoDB Shell directly accessing the local mongos process, run:
```
docker-compose exec mongos-router0 /bin/bash
mongosh
```
To execute a terminal session directly in one of the mongod containers and then view the mongod process logs, run:
```
docker-compose exec shard0-replica0 /bin/bash
cat /data/db/mongod.log
```
To shutdown and remove all the Docker Compose project's running containers (ready for you to rebuild and run again), run:
```
docker-compose down
```
