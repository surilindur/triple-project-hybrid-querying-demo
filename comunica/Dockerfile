FROM node:24-alpine

ADD https://github.com/surilindur/comunica.git#5af3ddfefd7efb752a9bb01527b8c4ba67fe7ef4 /opt/comunica
WORKDIR /opt/comunica
RUN yarn install --frozen-lockfile
WORKDIR /opt/comunica/engines/query-sparql

ENV NODE_ENV=production
ENV NODE_OPTIONS=--max-old-space-size=8192
ENV COMUNICA_CONFIG=/tmp/config.json

EXPOSE 3000

ENTRYPOINT [ "node", "./bin/http.js" ]
CMD [ "--help" ]
