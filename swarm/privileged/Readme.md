Die zwei in diesem Ordner vorgestellten GPIO Zugriffsmöglichkeiten
funktionieren mit Docker Swarm nicht.

### Methode 1 - privilegierte Container
docker run --privileged -d privileged_gpio -it $(docker build -q .)
### Methode 2 - Einbinden des GPIO Gerätes
docker run --device /dev/gpiomem --device /dev/i2c-1 -d deviced_gpio -it $(docker build -q .)
