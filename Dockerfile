FROM dohque/docker-sbt
MAINTAINER Ruslan Pilin

ENV PLAY_VERSION 2.4.0

# create an empty play project
# then fetch all jars so that your play will be ready to be used when you launch the image
COPY init-play.sh /tmp/

RUN cd /tmp  && ./init-play.sh && rm -rf *
