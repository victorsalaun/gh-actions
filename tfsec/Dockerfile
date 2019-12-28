FROM centos:7

RUN yum install -y wget

ARG TFSEC=0.13.0
RUN wget https://github.com/liamg/tfsec/releases/download/v${TFSEC}/tfsec-linux-amd64 \
  -O /usr/local/bin/tfsec \
  && chmod +x /usr/local/bin/tfsec

ENTRYPOINT ["tfsec"]

CMD ["."]
