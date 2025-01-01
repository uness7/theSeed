FROM node:20.11.1-bullseye-slim

WORKDIR /app

RUN npm install -g @angular/cli

COPY package*.json ./

RUN npm install --legacy-peer-deps
# --legacy-peer-deps flag helps when there are circular conflicts of versions among deps

COPY . .

EXPOSE 4200


# --disable-host-check allows connections from any host
CMD ["ng", "serve", "--host", "0.0.0.0", "--disable-host-check"]
