
install:
	# add namespace
	kubectl create ns observability \
	&& helm dependencies update grafana/charts/loki-stack \
	&& helm install loki grafana/charts/loki-stack -n observability \
	&& helm dependencies update grafana/charts/tempo \
	&& helm install tempo grafana/charts/tempo -n observability \
	&& kubectl apply -f cortex/cortex.yaml \
	&& helm dependencies update prometheus/charts/kube-prometheus-stack \
	&& helm install kube-prometheus-stack prometheus/charts/kube-prometheus-stack -n observability \
	&& kubectl apply -f ingress.yaml

uninstall:
	kubectl delete -f ingress.yaml \
		&& helm uninstall kube-prometheus-stack -n observability \
		&& kubectl delete -f cortex/cortex.yaml \
		&& helm uninstall loki -n observability \
		&& helm uninstall tempo -n observability \
		&& kubectl delete ns observability
	
