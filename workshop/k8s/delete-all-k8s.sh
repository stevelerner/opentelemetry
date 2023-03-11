kubectl delete -n otel deployment server-flask-otel-k8s &
kubectl delete -n otel service server-flask-otel-k8s &
kubectl delete -n otel pod client-py-otel-k8s &
kubectl delete -n otel pod client-java-otel-k8s &
kubectl delete -n otel pod client2-java-otel-k8s &
kubectl delete -n otel pod java-manual-inst-k8s &
kubectl delete -n otel deployment prometheus-endpoint &
