FROM node:22

COPY package*.json ./

RUN npm install

COPY . .

ENV PATH /node_modules/.bin:$PATH

CMD ["npm", "run", "dev"]
