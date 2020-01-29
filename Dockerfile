FROM scratch

ENV PGW_VERSION 1.1.0
ENV PGW_ARCH armv7
ENV PGW_URL https://github.com/prometheus/pushgateway/releases/download/v$PGW_VERSION/pushgateway-$PGW_VERSION.linux-$PGW_ARCH.tar.gz

COPY pushgateway /bin/pushgateway

EXPOSE     9091
ENTRYPOINT [ "/bin/pushgateway" ]
CMD        [ "--web.listen-address=:9091", \
             "--web.telemetry-path=/metrics", \
             "--persistence.file=/pushgateway/metric.store", \
             "--persistence.interval=1m", \
             "--log.level=info" ]
