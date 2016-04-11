FROM ubuntu:latest

# RUN mv /etc/apt/sources.list /etc/apt/sources.list_backup
# COPY ./sources.list /etc/apt/sources.list
RUN apt-get -y install software-properties-common 
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get install -y oracle-java8-installer oracle-java8-set-default
RUN apt-get install -y nodejs npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

#COPY ./test /test
#RUN cd /test; npm install;
#EXPOSE 3000
#COPY ./start.sh /start.sh
#CMD ["sh", "/start.sh"]
CMD ["java", "-version"]                          
