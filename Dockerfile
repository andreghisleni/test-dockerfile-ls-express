# Base Image
FROM node:14-alpine

RUN ls -la

WORKDIR /usr/app
# install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./
COPY .git/ ./.git/


RUN ls -la

# Default command
CMD ["npm", "start"]
