FROM node:8

WORKDIR /usr/src/app

ENV NODE_ENV production
ENV RPC_HOST ethereum
ENV RPC_PORT 8545
ENV LISTENING_PORT 30303
ENV VERBOSITY 1

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "start"]
