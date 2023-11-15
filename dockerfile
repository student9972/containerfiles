FROM centos:7
LABEL maintainer="CourseContent"
RUN yum install -y httpd
COPY index.html /var/www/html/
COPY containercourse*.png /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80