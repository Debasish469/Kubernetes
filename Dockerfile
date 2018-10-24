FROM tomcat:8-alpine

MAINTAINER Debasish 

COPY index.html /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080



