FROM stackbrew/ubuntu:saucy

RUN apt-get -y install nodejs npm git
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install harp -g
RUN git clone 

EXPOSE 5000
CMD ["/usr/bin/node","server.js"]