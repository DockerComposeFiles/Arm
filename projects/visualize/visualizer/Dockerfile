FROM arm32v7/httpd AS base

# Updaten des Images
RUN apt update && apt -y upgrade
# Debug Programme
RUN apt install nano tree lynx iputils-ping -y

RUN apt clean

FROM base AS visualizer

# Apache Dateien und statische Webseite
COPY /htdocs/ /usr/local/apache2/htdocs/
COPY httpd.conf /usr/local/apache2/httpd.conf

# Port im BS freigeben
#RUN iptables -A INPUT -p tcp --dport 3000 -j ACCEPT

# Apache startet ohne Angabe con CMD automatisch,
# sofern kein anderes Programm über CMD gestartet wird

# Standard-Ordner
#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# Docker spez. Ordner
#CMD ["/usr/local/apache2/bin/apachectl", "-D", "FOREGROUND"]

# Portfreigabe im BS
EXPOSE 433 80 3000