FROM httpd:2.4
RUN apt update
RUN apt install -y nut nut-client nut-server nut-cgi
RUN apt clean
RUN a2enmod cgi
ADD config/* /etc/nut/
ADD init.d/nut-server /etc/init.d/
RUN chmod a+x /etc/init.d/nut-server
ADD apache2/httpd.conf /usr/local/apache2/conf/httpd.conf
EXPOSE 3493
CMD ["sh", "-c", "service nut-server start && httpd-foreground"]
