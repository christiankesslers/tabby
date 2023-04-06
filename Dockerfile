FROM tabbyml/tabby:latest

USER root

RUN mkdir -p /data
RUN chown 1000 /data

USER 1000

ENV WEB_CONCURRENCY=4
ENV MODEL_REPLICA=16

RUN mkdir -p /data/config
COPY tabby.toml /data/config/
