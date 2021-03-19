FROM node

WORKDIR /usr/src/app

ENV NODE_ENV production

RUN git clone https://github.com/xdaichain/ethstats-agent /usr/src/app
# COPY package*.json ./
RUN npm install --production

COPY . .

CMD ["npm", "start"]
