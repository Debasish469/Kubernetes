FROM tomcat:8-alpine

MAINTAINER Manikantha Tadi Demo

COPY index.jsp /var/lib/tomcat8/webapps/ROOT/

EXPOSE 8080



