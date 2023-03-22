# requires dockerhub login
sudo docker build . -f dockerfile-otel-python-autogensimple -t python-autogensimple && \
sudo docker tag python-autogensimple stevelerner/python-autogensimple && \
sudo docker push stevelerner/python-autogensimple