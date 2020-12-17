FROM node:latest

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 80:3000

CMD ["npm", "start"]