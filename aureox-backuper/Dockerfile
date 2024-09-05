FROM alpine:latest

RUN apk add --update supervisor rclone nginx busybox-openrc && rm  -rf /tmp/* /var/cache/apk/*

ADD supervisord.conf /etc/
ADD crond.conf /etc/supervisor/conf.d/

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
