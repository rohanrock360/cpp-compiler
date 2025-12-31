
FROM node:18-alpine

# Install build dependencies
RUN apk add --no-cache g++ libstdc++

WORKDIR /app

COPY package.json .
RUN npm install

COPY runner.js .

ENV PORT=5000
EXPOSE 5000

CMD ["node", "runner.js"]
