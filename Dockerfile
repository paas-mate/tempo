FROM ttbb/base

WORKDIR /opt/sh

RUN wget https://github.com/grafana/tempo/releases/download/v1.4.1/tempo_1.4.1_linux_amd64.tar.gz  && \
mkdir -p tempo && \
tar -xf tempo_1.4.1_linux_amd64.tar.gz -C tempo --strip-components 1 && \
rm -rf tempo_1.4.1_linux_amd64.tar.gz

ENV TEMPO_HOME /opt/sh/tempo

WORKDIR /opt/sh/tempo
