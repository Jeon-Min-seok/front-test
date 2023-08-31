FROM ubuntu:focal							
RUN apt update; apt install -y apache2			
ADD index.html /var/www/html/index.html			
EXPOSE 80/tcp									
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]	
