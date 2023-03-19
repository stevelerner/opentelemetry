kubectl delete -n $NAMESPACE deployment flask-server &
kubectl delete -n $NAMESPACE service flask-server &
kubectl delete -n $NAMESPACE deployment prometheus-endpoint &
kubectl delete -n $NAMESPACE deployment redis &
kubectl delete -n $NAMESPACE service redis &
kubectl delete -n $NAMESPACE deployment client-java-gets &
kubectl delete -n $NAMESPACE deployment client-py-gets &
kubectl delete -n $NAMESPACE deployment client-py-posts &