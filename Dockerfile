FROM tomcat:8-alpine

MAINTAINER Manikantha

COPY index.html /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080



