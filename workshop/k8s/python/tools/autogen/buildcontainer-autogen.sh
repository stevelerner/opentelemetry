# requires dockerhub login
sudo docker build . -f dockerfile-otel-python-autogen -t python-autogen && \
sudo docker tag python-autogen stevelerner/python-autogen && \
sudo docker push stevelerner/python-autogen