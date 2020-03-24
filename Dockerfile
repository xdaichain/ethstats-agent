FROM node

WORKDIR /usr/src/app

ENV NODE_ENV production

COPY package*.json ./
RUN npm install --production

COPY . .

CMD ["npm", "start"]
