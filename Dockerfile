FROM stackbrew/ubuntu:saucy

RUN apt-get update
RUN apt-get -y install nodejs npm git
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install harp -g
RUN git clone https://github.com/darron/harp-docker-test.git /srv/www

EXPOSE 5000
CMD cd /srv/www; /usr/bin/node server.js