FROM arm32v7/python:rc-buster
#RUN apt clean
RUN apt update

# Bibliotheken
RUN apt install -y apt-utils i2c-tools python-smbus
RUN pip3 install smbus

# Shellskript zum erfassen angeschlossener Geräte
ADD script.sh /
RUN chmod a+rx /script.sh
CMD ["./script.sh"]
