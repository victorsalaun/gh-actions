FROM python:3.7.4-alpine3.10

RUN pip install --upgrade pip

ARG YAMLLINT=1.18.0
RUN pip install yamllint==v${YAMLLINT}
RUN yamllint --version
