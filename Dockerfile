FROM node:15-slim

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN apt-get update && apt-get install -y \
    curl \
    zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN npm i -g serverless@latest-1
RUN npm i -g serverless-artillery
WORKDIR /home/node/artillery
RUN chmod 755 -R /home/node/artillery
# RUN npm audit fix
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# CMD ["/bin/sh", "/usr/bin/entrypoint.sh"]
# CMD [ "slsart", "deploy" ]
