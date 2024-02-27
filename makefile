cluster ?= "test"


# Kind
cluster-create:
	kind create cluster --name ${cluster} --config kind/kind-multinode.yaml --image kindest/node:v1.23.10

cluster-delete:
	@kind delete cluster --name ${cluster}

# load image into the cluster
kind-load:
	kind load 

# ===============================
# Flux cd

flux-bootstrap:
	flux bootstrap github --owner ezratameno --repository k8s-flux --branch master --path flux --personal true