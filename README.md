# Weather REST

### Installation

* Create the directories
```
mkdir -p ~/dev/docker/projects/weather-rest/volumes/code/
mkdir -p ~/dev/docker/projects/weather-rest/volumes/logs
```

* Copy the application archive in the code directory
```
cp ~/dev/java/projects/weather-rest/target/weather-rest-0.0.1-SNAPSHOT.jar volumes/code/
```

### Example request
```
curl -i "http://localhost:8080/api/current-city-weather?unit=m&city=Stockholm"
```

### Commands

* Start the application
```
cd ~/dev/docker/projects/weather-rest
docker stack deploy --compose-file docker-compose-dev.yml weather-rest
```

* Stopping the swarm application
```
docker stack rm weather-rest
```
