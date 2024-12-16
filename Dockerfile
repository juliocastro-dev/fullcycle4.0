FROM node:22.3.0

RUN apt update && \
    apt install openssl procps -y && \
    npm install -g @nestjs/cli@10.4.9

USER node

WORKDIR /home/node/app

CMD [ "tail", "-f", "/dev/null" ]