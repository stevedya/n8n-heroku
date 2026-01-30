FROM n8nio/n8n:latest

USER root

# Install Python 3 + pip
RUN apt-get update \
  && apt-get install -y python3 python3-pip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install Stripe Python SDK
RUN pip3 install --no-cache-dir stripe

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
