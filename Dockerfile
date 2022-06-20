FROM node:16-slim

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm i -g serverless@latest-1
RUN npm i -g serverless-artillery
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
CMD ["/bin/sh", "/usr/bin/entrypoint.sh"]
