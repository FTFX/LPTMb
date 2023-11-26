FROM grafana/loki:2.9.2

USER 0

RUN apk add --no-cache \
    haproxy \
    envsubst \
    && rm -rf /var/cache/apk/* \
    && chown -R loki:loki /etc/haproxy

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY haproxy.cfg.template /etc/haproxy/haproxy.cfg.template

USER 10001
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
