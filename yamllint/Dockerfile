FROM python:3.7.4-alpine3.10

RUN apk add --no-cache bash
RUN pip install --upgrade pip

ARG YAMLLINT=1.18.0
RUN pip install yamllint==v${YAMLLINT}

ENTRYPOINT ["yamllint"]

CMD ["--version"]
