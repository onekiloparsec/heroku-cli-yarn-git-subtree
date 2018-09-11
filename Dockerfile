FROM node:8-alpine

MAINTAINER onekiloparsec <cedric@onekilopars.ec>

RUN apk --update --no-cache add bash git openssh-client

RUN apk --update --no-cache add git-subtree

RUN npm i npm@latest -g

RUN npm install -g heroku \
 && rm -rf /tmp/* /root/.npm \
 && cd /usr/local/lib/node_modules/npm/ \
 && rm -rf man doc html *.md *.bat *.yml changelogs scripts test AUTHORS LICENSE Makefile \
 && find /usr/local/lib/node_modules/ -name test -o -name tests -o -name .bin -type d | xargs rm -rf
