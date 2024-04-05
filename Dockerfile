FROM node:16-alpine


VOLUME /www
WORKDIR /www

RUN chown -R 777 /www

COPY index.js .
COPY config .
COPY package.json .
COPY  app.bundle ./bundles/

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production


COPY . .
RUN chmod 777 node_modules
RUN chmod -R 775 /www/  




EXPOSE $PORT

CMD [ "npm", "start" ]