FROM arm32v7/ubuntu:focal

# Aufgrund eines permission Fehlers in der Datei "libseccomp2"
# schlägt die Signatureüberprüfung in den apt Repositorys fehl.
# Einen angepasste Version kann heruntergeladen manuell installiert werden.
# https://packages.debian.org/sid/armhf/libseccomp2/download

RUN apt clean && apt update && apt upgrade -y
RUN apt install nano -y

# Festlegen des entrypoint, um den Container dauerhaft laufen zu lassen. Funktion gibt folgenden Fehler zurück:
# „tail: cannot read realtime clock: Operation not permitted”
#ENTRYPOINT ["tail", "-f", "/dev/null"]
