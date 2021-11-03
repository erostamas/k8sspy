FROM ubuntu:latest

RUN apt-get update --allow-unauthenticated --fix-missing
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y python3 \
                       python3-pip \
                       curl \
                       wget \
                       vim \
                       tmux \
                       netcat

RUN python3 -m pip install flask \
                           certifi \
                           six \
                           python_dateutil \
                           setuptools \
                           urllib3 \
                           requests \
                           grpcio \
                           protobuf

WORKDIR /tmp/
RUN wget https://github.com/fullstorydev/grpcurl/releases/download/v1.8.5/grpcurl_1.8.5_linux_x86_64.tar.gz
RUN tar -xzf /tmp/grpcurl_1.8.5_linux_x86_64.tar.gz
RUN cp /tmp/grpcurl /usr/bin/

WORKDIR /

CMD tail -f /dev/null
