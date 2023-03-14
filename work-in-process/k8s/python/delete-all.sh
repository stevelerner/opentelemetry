sudo kubectl delete -n otel deployment server-flask-otel-k8s	&
sudo kubectl delete -n otel service server-flask-otel-k8s &
sudo kubectl delete -n otel pod client-py-otel-k8s &