redis-server /etc/redis/redis.conf &
opentelemetry-instrument python3 ./python-redis.py