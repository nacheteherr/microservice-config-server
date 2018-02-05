FROM anapsix/alpine-java
MAINTAINER Ignacio Herrero
ADD configServer/target/configServer-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 2001
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]