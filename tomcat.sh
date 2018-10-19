#!/bin/bash

#echo "Granting permissions for"
#chmod -R 777 /var/lib/tomcat8


echo "starting tomcat.."
/etc/init.d/tomcat8 start

# The container will run as long as the script is running, that's why
# we need something long-lived here
exec tail -f /var/log/tomcat8/catalina.out
