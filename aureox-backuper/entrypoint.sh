#!/bin/sh

env >> /etc/environment

cp /crontab /var/spool/cron/crontabs/root

exec "$@"
