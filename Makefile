.PHONY: yamllint_docker_build
yamllint_docker_build:
	docker build -t victorsalaun/gh-actions/yamllint ./yamllint
