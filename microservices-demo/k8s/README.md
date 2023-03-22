## Opentelemetry Microservices Demo: K3s

Recommended platform:  
* AWS EC2 t3.large 20G disk
* Standard k3s install: [https://k3s.io/](https://k3s.io/)  

This demo deploys:  
* java and python http request client containers
* redis container
* python flask server that makes requests to the redis container

An opentelemetry collector is expected to be installed and forwarding traces to an observability system.  
The containers run opentelemetry instrumentated apps and send traces to the cluster's expected opentelemetry collector `4317` port.  

### Instructions  
* If using k3s, start with setting k3s config:  
```
source k3s-prep.sh
```
* Deploy demo
```
source deploy.sh
```
* Remove demo deployment
```
source delete.sh
```