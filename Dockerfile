#specify a base image 
FROM centos:7
# to show who made this dockerfile
LABEL maintener="Moise keep working hard"
#upgrade all packages
RUN yum -y update && yum clean all
#install httpd 
RUN yum install httpd -y
# copy the application from the source to the destination
COPY index.html   /var/www/html/
# expose the port 
EXPOSE 80
#start apache after the container starts
ENTRYPOINT [ "/usr/sbin/httpd" ]
#run this when the container starts
CMD [ "-D", "FOREGROUND" ]
