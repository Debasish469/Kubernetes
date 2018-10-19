FROM ubuntu:16.04

MAINTAINER Debasish Padhi


RUN apt-get -y update && apt-get -y install tomcat8 vim supervisor  && apt-get clean
ADD tomcat.sh /root/tomcat.sh
RUN chmod +x /root/tomcat.sh

EXPOSE 8080

CMD ["/root/tomcat.sh"]
