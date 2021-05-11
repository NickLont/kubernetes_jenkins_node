FROM node:14 
WORKDIR /usr/src/app 
COPY package*.json ./ 
COPY yarn.lock ./ 
RUN npm install -g yarn
RUN yarn
COPY . . 
EXPOSE 8000
CMD [ "node", "server.js" ]