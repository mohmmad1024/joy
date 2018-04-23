FROM ubuntu
LABEL maintainer="Mohammed Alsahli <mohmmad1024@gmail.com>"

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential libssl-dev libpcap-dev libcurl4-openssl-dev git 
RUN git clone https://github.com/cisco/joy.git
RUN cd /app/joy
RUN ./config
RUN make

VOLUME ["/joy/pcaps"]

CMD bash
