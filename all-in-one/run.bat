::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::      Dev environment startup script for Alfresco Community     ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

IF "%MAVEN_OPTS%" == "" (
    ECHO The environment variable 'MAVEN_OPTS' is not set, setting it for you
    SET MAVEN_OPTS=-Xmx1024M -XX:MaxPermSize=512m
)
ECHO MAVEN_OPTS is set to '%MAVEN_OPTS%'

mvn clean install -Prun