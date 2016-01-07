FROM seelio/node-base:latest

RUN mkdir -p /opt/node-app

WORKDIR /opt/node-app

COPY index.js index.js

CMD ["node","--debug","index.js"]