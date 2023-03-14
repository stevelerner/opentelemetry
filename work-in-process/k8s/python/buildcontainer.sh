# requires dockerhub login
sudo docker build . -f otel-python.dockerfile -t otel-python && \
sudo docker tag otel-python stevelerner/otel-python && \
sudo docker push stevelerner/otel-python