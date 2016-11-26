openssl req -newkey rsa:2048 -nodes -keyout tls.key -x509 -days 365 -out tls.crt
kubectl apply secret generic traefik-cert --from-file=tls.crt --from-file=tls.key --namespace=kube-system
wget -N https://raw.githubusercontent.com/oussama/misc/master/k8s/traefik.toml
kubectl delete configmap traefik-conf --namespace=kube-system

kubectl create configmap traefik-conf --from-file=traefik.toml --namespace=kube-system
wget -N https://raw.githubusercontent.com/oussama/misc/master/k8s/traefik.yaml
kubectl apply -f traefik.yaml
kubectl delete deploy traefik-ingress-controller --namespace=kube-system

kubectl describe deploy traefik-ingress-controller --namespace=kube-system
kubectl --namespace=kube-system get node
kubectl describe node traefik-ingress-controller --namespace=kube-system
kubectl describe po traefik-ingress-controller --namespace=kube-system
