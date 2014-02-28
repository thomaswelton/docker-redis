# Ubuntu Redis Image

Redis 2.8.6

```
docker run -d -p 6379 -t thomaswelton.com:5000/redis
```

With data persistence in the host directory `/redis`

```
docker run \
    -d \
    -p 6379 \
    -v /redis:/data \
    -v /redis:/logs \
    -t thomaswelton.com:5000/redis
```
