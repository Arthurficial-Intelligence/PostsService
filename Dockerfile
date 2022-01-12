FROM node:12-slim
WORKDIR /app
COPY ./package*.json ./
RUN npm ci --only-production
COPY ./ ./
EXPOSE 4000
CMD [ "node", "./bin/www" ]
