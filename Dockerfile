FROM node:latest

RUN npm install -g json-server

WORKDIR /data

COPY db.json ./

EXPOSE 3000

ENTRYPOINT ["json-server"]

CMD ["--watch", "db.json", "--host", "0.0.0.0"]
