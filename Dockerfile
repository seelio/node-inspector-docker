FROM seelio/node-base:latest

RUN mkdir -p /opt/node-inspector
WORKDIR /opt/node-inspector
RUN npm install node-inspector@0.12.x
VOLUME /opt/node-inspector
ENTRYPOINT ["node_modules/.bin/node-inspector"]