FROM node:latest

WORKDIR /app

RUN apt install -y curl

RUN npm install 

COPY ./MulService.js .

EXPOSE 80

CMD [ "node", "MulService.js" ]
