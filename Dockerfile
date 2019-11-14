FROM python:3.7.4-alpine3.10

RUN apk --no-cache --update add bash jq make git openssh-client ca-certificates curl openssl
RUN pip install --upgrade pip

ARG KUBECTL=1.16.3
RUN curl -sL https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL}/bin/linux/amd64/kubectl \
    -o /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl
RUN kubectl version --client

ARG HELM_V2=2.16.1
RUN curl -sSL https://get.helm.sh/helm-v${HELM_V2}-linux-amd64.tar.gz | \
    tar xz && mv linux-amd64/helm /usr/local/bin/helm && rm -rf linux-amd64
RUN helm version --client

ARG YAMLLINT=1.18.0
RUN pip install yamllint==v${YAMLLINT}
RUN yamllint --version

COPY src/ /

ENTRYPOINT ["/entrypoint.sh"]
