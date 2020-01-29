FROM node:alpine

RUN apk add --no-cache git bash && \
    npm i pm2 -g

WORKDIR /sharex

ADD https://api.github.com/repos/TannerReynolds/node-sharex-server/git/refs/heads/master /version.json
RUN git clone https://github.com/TannerReynolds/node-sharex-server.git ./ && \
    cd src && \
    npm i

ADD config.json .
ADD start.sh .

RUN ["chmod", "+x", "start.sh"]

EXPOSE 80

ENTRYPOINT ["./start.sh"]
