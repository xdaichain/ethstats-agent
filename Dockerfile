FROM node:8

WORKDIR /usr/src/app

ENV NODE_ENV production
ENV RPC_HOST parity
ENV RPC_PORT 8545
ENV LISTENING_PORT 30303
ENV INSTANCE_NAME $RPC_HOST
ENV WS_SERVER http://dashboard:3000
ENV WS_SECRET s3cr3t
ENV VERBOSITY 2

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "start"]
