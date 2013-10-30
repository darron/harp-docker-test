FROM stackbrew/ubuntu:saucy

RUN apt-get -y install nodejs npm git
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install harp -g
RUN git clone https://github.com/darron/harp-docker-test.git
RUN mv harp-docker-test/* .

EXPOSE 5000
CMD ["/usr/bin/node","server.js"]