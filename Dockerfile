FROM vixns/java8:latest

# RUN mv /etc/apt/sources.list /etc/apt/sources.list_backup
# COPY ./sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y nodejs npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

COPY ./test /test
RUN cd /test; npm install;
EXPOSE 3000
COPY ./start.sh /start.sh
CMD ["sh", "/start.sh"]
~                          
