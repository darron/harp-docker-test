FROM stackbrew/ubuntu:saucy

RUN apt-get update
RUN apt-get -y install nodejs npm git
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install harp -g
RUN mkdir /srv/www; cd /srv/www; git clone https://github.com/darron/harp-docker-test.git; mv harp-docker-test/* .

EXPOSE 5000
CMD cd /srv/www; /usr/bin/node server.js