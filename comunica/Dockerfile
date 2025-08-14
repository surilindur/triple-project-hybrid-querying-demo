FROM node:24-alpine

ADD https://github.com/surilindur/comunica.git#40d287c162729efab20be05ba8e0bcc383ddd360 /opt/comunica
WORKDIR /opt/comunica
RUN yarn install --frozen-lockfile
WORKDIR /opt/comunica/engines/query-sparql

ENV NODE_ENV=production
ENV NODE_OPTIONS=--max-old-space-size=8192
ENV COMUNICA_CONFIG=/tmp/config.json

EXPOSE 3000

ENTRYPOINT [ "node", "./bin/http.js" ]
CMD [ "--help" ]
