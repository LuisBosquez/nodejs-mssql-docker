FROM lbosqmsft/mssql-nodejs-tedious:latest
RUN mkdir /app
ADD ./app /app
WORKDIR /app

RUN npm install

RUN chmod +x ./entrypoint.sh
CMD /bin/bash ./entrypoint.sh