FROM bbytes/java7

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir /opt/bbytes
ADD orientdb-v1.5.zip /opt/bbytes/orientdb-v1.5.zip 
RUN apt-get install unzip
RUN  cd /opt/bbytes ; unzip orientdb-v1.5.zip
RUN cd /opt/bbytes/orientdb-v1.5/bin; chmod 744 -R .
EXPOSE 2480
EXPOSE 2424
CMD cd /opt/bbytes/orientdb-v1.5/bin; ./server.sh