# requires dockerhub login
curl -L https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar -o ./opentelemetry-javaagent.jar
sudo docker build . -f dockerfile-java -t otel-java
sudo docker tag otel-java stevelerner/otel-java
sudo docker push stevelerner/otel-java
rm ./opentelemetry-javaagent.jar