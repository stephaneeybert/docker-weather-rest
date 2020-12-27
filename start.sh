#!/bin/bash -x

export JAVA_HOME=/usr/local/jdk-15.0.1
export JAVA_PATH=$JAVA_HOME
export JAVA_OPTS=""
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/jre/lib/rt.jar
export PATH=$PATH:$JAVA_HOME/bin

java -jar /tmp/weather-rest/weather-rest.jar
