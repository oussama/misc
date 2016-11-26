openssl req -newkey rsa:2048 -nodes -keyout tls.key -x509 -days 365 -out tls.crt
kubectl create secret generic traefik-cert --from-file=tls.crt --from-file=tls.key --namespace=kube-system
wget -N https://raw.githubusercontent.com/oussama/misc/master/k8s/traefik.toml
kubectl create configmap traefik-conf --from-file=traefik.toml --namespace=kube-system
wget -N https://raw.githubusercontent.com/oussama/misc/master/k8s/traefik.yaml
kubectl create -f traefik.yaml
