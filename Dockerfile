FROM node:20

WORKDIR /app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY . .

EXPOSE 8080

CMD ["node", "scripts/static-supervisor.js"]
