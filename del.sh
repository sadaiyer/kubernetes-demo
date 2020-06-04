kubectl delete service nginx
kubectl delete service nginx-np
kubectl delete deployment nginx --force --grace-period=0
