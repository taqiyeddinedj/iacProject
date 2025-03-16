FROM node:18-alpine

WORKDIR /app

COPY redis-node/package.json ./

# Install dependencies with legacy-peer-deps flag to bypass conflicts
RUN npm install --legacy-peer-deps

COPY redis-node/ ./

EXPOSE 3000

CMD ["node", "main.js"]
