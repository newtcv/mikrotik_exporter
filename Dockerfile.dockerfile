FROM ubuntu


RUN apt update && apt install -y wget

RUN wget https://github.com/nshttpd/mikrotik-exporter/releases/download/1.0.11/mikrotik-exporter_linux_amd64 && mv mikrotik-exporter_linux_amd64 mikrotik-exporter && chmod a+x mikrotik-exporter

COPY config.yml config.yml

CMD ["./mikrotik-exporter", "-config-file", "config.yml"]