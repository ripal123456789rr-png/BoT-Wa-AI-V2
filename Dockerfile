FROM node:22

RUN apt-get update && apt-get install -y \
    libatomic1 \
    chromium \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "index.js"]
