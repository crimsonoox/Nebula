FROM node:20-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN apk add --no-cache python3 make g++ && npm install --production && apk del python3 make g++
COPY . .
EXPOSE 8080
CMD ["npm", "start"]
