kubectl delete -n otel pod py-autogen &
kubectl delete -n otel service py-autogen &
kubectl delete -n otel deployment py-autogen &
kubectl delete -n otel pod redis &
kubectl delete -n otel service redis &
kubectl delete -n otel deployment redis &