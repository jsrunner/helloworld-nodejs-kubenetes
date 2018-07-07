FROM node:7.9
EXPOSE 8080
COPY server.js .
CMD node server.js