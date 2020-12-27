#!/bin/bash -x

docker build -t stephaneeybert/weather-rest --rm=true .
if [ $? -eq 0 ]; then
docker tag stephaneeybert/weather-rest localhost:5000/weather-rest
docker push localhost:5000/weather-rest
docker tag stephaneeybert/weather-rest thalasoft.com:5000/weather-rest
#docker push thalasoft.com:5000/weather-rest
fi
