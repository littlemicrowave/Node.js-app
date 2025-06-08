FROM node:16

COPY . .

RUN npm install

EXPOSE 8080

LABEL com.centurylinklabs.watchtower.enable="true"

CMD node index.js
