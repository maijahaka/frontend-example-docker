
FROM node:alpine

RUN apk update && apk upgrade && apk add --no-cache \
    bash git curl && \
    git clone https://github.com/docker-hy/frontend-example-docker

WORKDIR /frontend-example-docker

RUN npm install

ENV API_URL=http://localhost:8000

CMD ["npm", "start"]
