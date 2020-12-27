FROM stephaneeybert/ubuntuos:18.04

# Installing the JDK
WORKDIR /usr/local
COPY java-15.0.1-open.zip /usr/local
RUN unzip java-15.0.1-open.zip


# Installing the application start command

COPY start.sh /user/local/weather-rest/start.sh
RUN chmod 755 /user/local/weather-rest/start.sh

# Starting the application
WORKDIR /usr/local/weather-rest
#ENTRYPOINT ["/usr/bin/tail", "-f", "/dev/null"]
ENTRYPOINT ["/bin/bash", "/user/local/weather-rest/start.sh"]
