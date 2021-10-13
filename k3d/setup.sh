# install k3d
brew install k3d

# create default cluster
k3d cluster create barak-homelab \
  --image rancher/k3s:latest \
  --port 80:80@loadbalancer \
  --port 443:443@loadbalancer \
  --servers 1 --agents 3 \
  --volume "${HOME}/.k3d/registries.yaml:/etc/rancher/k3s/registries.yaml"

# install cert-manager
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.1.0/cert-manager.yaml
kubectl -n cert-manager rollout status deploy/cert-manager

# install step-certificates
# add step repo
helm repo add smallstep https://smallstep.github.io/helm-charts/
# install step-certificate
helm install step-ca smallstep/step-certificates --set ca.name='Barak HomeLab'
# install autocert
helm install smallstep/autocert --generate-name

helm upgrade --namespace=traefik-v2 \
    --set="additionalArguments={--metrics.prometheus=true,--tracing.elastic=true}" \
    traefik traefik/traefik
