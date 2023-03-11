# change the endoint env variable in the deployment .yaml to change location of your agent
# change target URL below to alter the test target
java \
-DtargetUrl=http://$FLASK_SERVER_SERVICE_HOST:$FLASK_SERVER_SERVICE_PORT/echo?key=value \
-javaagent:./opentelemetry-javaagent.jar \
-jar ./target/java-app-1.0-SNAPSHOT.jar