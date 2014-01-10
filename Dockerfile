FROM quintenk/jdk7-oracle
MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir /opt/bbytes
RUN cd /opt/bbytes ; wget https://www.dropbox.com/s/umqpi5lvj50g10i/orientdb-1.5.1.zip
RUN apt-get install unzip
RUN  cd /opt/bbytes ; unzip orientdb-1.5.1.zip
RUN cd /opt/bbytes/orientdb-1.5.1/bin; chmod 744 -R .
EXPOSE 2480
EXPOSE 2424
CMD cd /opt/bbytes/orientdb-1.5.1/bin; ./server.sh