cluster ?= "test"

hello:
	@echo ${cluster}

cluster-create:
	kind create cluster --name ${cluster} --config kind/kind-multinode.yaml --image kindest/node:v1.23.10

cluster-delete:
	@kind delete cluster --name ${cluster}

# load image into the cluster
kind-load:
	kind load 