FROM alpine:latest

RUN apk add --update supervisor rclone nginx busybox-openrc && rm  -rf /tmp/* /var/cache/apk/*

ADD supervisord.conf /etc/
ADD crond.conf /etc/supervisor/conf.d/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
