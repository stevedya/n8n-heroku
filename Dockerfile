FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache python3 py3-pip
RUN pip3 install --no-cache-dir stripe

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
