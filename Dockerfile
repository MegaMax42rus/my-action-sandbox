FROM node:14-alpine

WORKDIR /usr/src/app

COPY . .

CMD ["watch", "ls", "-lA"]
