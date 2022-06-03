FROM node:16-alpine

ENV NODE_ENV=production

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY lib ./lib/
COPY migrations ./migrations/

EXPOSE 3000

CMD [ "npm", "start" ]
