FROM node:8
WORKDIR /app
COPY package.json /app
RUN npm install --quiet -g pm2 && npm cache clean --force
COPY . /app
CMD node index.js
EXPOSE 8081
