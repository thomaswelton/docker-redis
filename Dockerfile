FROM thomaswelton/ubuntu

MAINTAINER thomaswelton

ENV VERSION 2.8.6
RUN wget http://download.redis.io/releases/redis-$VERSION.tar.gz
RUN tar xzf redis-$VERSION.tar.gz
RUN cd redis-$VERSION && make
RUN ln -sfn redis-$VERSION redis
RUN mkdir /data
RUN mkdir /logs

VOLUME [ "/logs" ]
VOLUME [ "/data" ]

ADD redis.conf redis.conf

EXPOSE 6379

CMD ["redis/src/redis-server", "redis.conf"]
