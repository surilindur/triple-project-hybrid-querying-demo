FROM node:24-alpine

ADD https://github.com/surilindur/comunica.git#e1f9ac0f2950ab4a5e2b8cbe0eca5e024e65a3b8 /opt/comunica
WORKDIR /opt/comunica
RUN yarn install --frozen-lockfile
WORKDIR /opt/comunica/engines/query-sparql

ENV NODE_ENV=production
ENV NODE_OPTIONS=--max-old-space-size=8192
ENV COMUNICA_CONFIG=/tmp/config.json

EXPOSE 3000

ENTRYPOINT [ "node", "./bin/http.js" ]
CMD [ "--help" ]
