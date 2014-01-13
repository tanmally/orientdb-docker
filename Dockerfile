FROM quintenk/jdk7-oracle
MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir /opt/bbytes
ADD orientdb-v5.zip /opt/bbytes/orientdb-v5.zip 
RUN apt-get install unzip
RUN  cd /opt/bbytes ; unzip orientdb-v5.zip
RUN cd /opt/bbytes/orientdb-v5/bin; chmod 744 -R .
EXPOSE 2480
EXPOSE 2424
CMD cd /opt/bbytes/orientdb-v5/bin; ./server.sh