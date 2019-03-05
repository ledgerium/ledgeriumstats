FROM node:6-alpine
MAINTAINER Rahul Golash <rahul.g@ledgerium.net>

ADD . /ledgeriumstats
RUN apk add --update git && \
    cd /ledgeriumstats && npm install && \
    npm install -g grunt-cli && \
    grunt

WORKDIR /ledgeriumstats

CMD ["npm", "start"]
