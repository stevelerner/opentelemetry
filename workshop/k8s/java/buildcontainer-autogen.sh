# requires dockerhub login
curl -L https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar -o ./opentelemetry-javaagent.jar
sudo docker build . -f dockerfile-java-autogen -t splk-java-autogen
sudo docker tag splk-java-autogen stevelsplunk/splk-java-autogen
sudo docker push stevelsplunk/splk-java-autogen
rm ./splunk-otel-javaagent.jar