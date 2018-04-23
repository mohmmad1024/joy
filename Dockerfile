FROM ubuntu
LABEL maintainer="Mohammed Alsahli <mohmmad1024@gmail.com>"

RUN mkdir -p /app 
RUN cd /app

#WORKDIR /app

RUN apt-get update && apt-get install -y build-essential libssl-dev libpcap-dev libcurl4-openssl-dev git 
RUN git clone https://github.com/cisco/joy.git
RUN cd /app/joy
RUN ./config -l /usr/lib/x86_64-linux-gnu
RUN make
RUN cd /app/joy/bin

WORKDIR /app/joy/bin

VOLUME ["/joy/pcaps"]

CMD bash
