FROM node:6-alpine

LABEL repo=git@github.com/ukhomeoffice/dsp-hello-world-shabe.git

WORKDIR /src
COPY . .
RUN npm install --quiet && npm test
EXPOSE 4000
CMD npm start
