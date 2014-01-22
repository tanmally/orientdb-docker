FROM bbytes/java7

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir -p /opt/bbytes
ADD orientdb-1.6.zip /opt/bbytes/orientdb-1.6.zip 
RUN apt-get install unzip
RUN  cd /opt/bbytes ; unzip orientdb-1.6.zip
RUN cd /opt/bbytes/orientdb-1.6/bin; chmod 744 -R .
EXPOSE 2480
EXPOSE 2424
CMD cd /opt/bbytes/orientdb-1.6/bin; ./server.sh