FROM node:latest
MAINTAINER  David Smith <david@startingdreams.com>
ENV ENVIRONMENT=production
ENV PORT=3000
COPY . /var/www
WORKDIR /var/www
#VOLUME ["/var/www"]
RUN npm install
EXPOSE $PORT
ENTRYPOINT ["npm", "start"]