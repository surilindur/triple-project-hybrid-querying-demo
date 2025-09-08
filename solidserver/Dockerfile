FROM node:24-alpine

ADD https://github.com/CommunitySolidServer/CommunitySolidServer.git#eb09839a2db09e6b236aeebdd5fc525e88393676 /opt/solidserver
WORKDIR /opt/solidserver
RUN npm ci

ENTRYPOINT [ "node", "./bin/server.js" ]
CMD [ "--help" ]
