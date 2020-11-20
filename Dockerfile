FROM alpine:3.12
RUN apk --no-cache add redis \
 && sed -i 's/protected-mode yes/protected-mode no/' /etc/redis.conf \
 && sed -i 's/^\(bind .*\)$/# \1/' /etc/redis.conf \
 && sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis.conf \
 && sed -i 's/^\(dir .*\)$/# \1\ndir \/data/' /etc/redis.conf \
 && sed -i 's/^\(logfile .*\)$/# \1/' /etc/redis.conf
VOLUME /data
WORKDIR /data
EXPOSE 6379
ENTRYPOINT ["redis-server", "/etc/redis.conf"]
HEALTHCHECK CMD redis-cli ping
