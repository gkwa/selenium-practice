#!/bin/bash
# Last modified $Id$
# $HeadURL$
# -*- sh-mode -*-

# selenium-remote-control-1.0-beta-1 doesn't recognize -singleWindow option
# jar_file=selenium/selenium-remote-control-1.0-beta-1/selenium-server-1.0-beta-1/selenium-server.jar
# jar_file=./*-SNAPSHOT/selenium-server-*-SNAPSHOT/selenium-server.jar
# jar_file=./selenium-remote-control-1.0.1/selenium-server-1.0.1/selenium-server.jar
# jar_file=./sel/selenium-server-2.0a4.jar
jar_file=./sel/selenium-server-1.0.3/selenium-server.jar


# Exception in thread "main" 
# java.lang.NoClassDefFoundError org/apache/commons/logging/LogFactory selenium
# : 



# Exception in thread java.lang.NoClassDefFoundError java org.apache.commons.logging.LogFactory
# Fix: http://groups.google.com/group/selenium-users/msg/7f47208221e6bc54

# java \
#     -Dlog4j.configuration=log4j.properties \
#     -cp "log4j-1.2.14.jar;selenium-server-2.0a4.jar" \
#     org.openqa.selenium.server.SeleniumServer 


# java org.openqa.selenium.server.SeleniumServer 


# java \
#     -Dlog4j.configuration=log4j.properties \
#     -jar "commons-logging-1.1.1.jar;selenium-server-2.0a4.jar"

java \
    -Dlog4j.configuration=log4j.properties \
    -jar $jar_file;




exit 


java \
    -cp ./commons-logging-1.1.1.jar \
    -cp ./sel \
    -jar $jar_file \
     -singleWindow \
     -avoidProxy





exit 

java -jar $jar_file \
     -singleWindow \
     -browserSessionReuse -avoidProxy



exit


# java -jar $jar_file \
#     -help;



# java -jar $jar_file \
#      -singleWindow -log selenium_server_$(date +%Y-%m-%d).log  \
#      -browserSessionReuse -avoidProxy -debug 
