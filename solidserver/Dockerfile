FROM node:24-alpine

ADD https://github.com/CommunitySolidServer/CommunitySolidServer.git#ee5a723cd1d782a3077e674652f6d1d964810f15 /opt/solidserver
WORKDIR /opt/solidserver
RUN npm ci

ENTRYPOINT [ "node", "./bin/server.js" ]
CMD [ "--help" ]
