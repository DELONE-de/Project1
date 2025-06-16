FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm instal -g nodemon
RUN npm install

COPY . .

EXPOSE 5000

CMD [ "npm", "start" ]
