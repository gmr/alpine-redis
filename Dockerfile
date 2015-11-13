FROM gliderlabs/alpine:edge
RUN \
  apk --update add redis && \
  sed -i 's/^\(bind .*\)$/# \1/' /etc/redis.conf && \
  sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis.conf && \
  sed -i 's/^\(dir .*\)$/# \1\ndir \/data/' /etc/redis.conf && \
  sed -i 's/^\(logfile .*\)$/# \1/' /etc/redis.conf
VOLUME /data
WORKDIR /data
EXPOSE 6379
ENTRYPOINT ["redis-server", "/etc/redis.conf"]
