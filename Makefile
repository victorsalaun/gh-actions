.PHONY: kubectl_docker_build
kubectl_docker_build:
	docker build -t victorsalaun/gh-actions/kubectl ./kubectl

.PHONY: tfsec_docker_build
tfsec_docker_build:
	docker build -t victorsalaun/gh-actions/tfsec ./tfsec

.PHONY: yamllint_docker_build
yamllint_docker_build:
	docker build -t victorsalaun/gh-actions/yamllint ./yamllint
