FROM centos:7

RUN yum install -y wget

ARG TFSEC=0.12.2
RUN wget https://github.com/liamg/tfsec/releases/download/v${TFSEC}/tfsec-linux-amd64 \
  -O /usr/local/bin/tfsec \
  && chmod +x /usr/local/bin/tfsec

RUN ls /usr/local/bin
RUN ls /usr/local/bin/tfsec
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
