FROM alpine:3.11

ENV SUBGIT_VERSION=3.3.9

RUN set -xe; \
  apk add --update curl bash openjdk11-jre ;\
  rm -rf /var/cache/apk/* ;\
  wget -O /tmp/subgit.zip https://subgit.com/download/subgit-${SUBGIT_VERSION}.zip ;\
  cd /tmp ;\
  unzip subgit.zip ;\
  rm -f subgit.zip ;\
  mv /tmp/subgit-${SUBGIT_VERSION} /usr/local/bin/subgit ;\
  ln -s /usr/local/bin/subgit/bin/subgit /bin/subgit

WORKDIR '/repo'

