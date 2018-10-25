FROM tomcat:8-alpine

MAINTAINER Manikantha T

COPY index.jsp /var/lib/tomcat8/webapps/ROOT/

EXPOSE 8080



