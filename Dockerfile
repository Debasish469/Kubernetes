FROM tomcat:8-alpine

MAINTAINER Manikantha Tadi

COPY index.html /var/lib/tomcat8/webapps/ROOT/

EXPOSE 8080



