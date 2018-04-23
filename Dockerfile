FROM ubuntu
LABEL maintainer="Mohammed Alsahli <mohmmad1024@gmail.com>"

WORKDIR /joy

RUN apt install build-essential libssl-dev libpcap-dev libcurl4-openssl-dev
RUN git clone https://github.com/cisco/joy.git
RUN cd joy
RUN make

VOLUME ["/joy/pcaps"]

CMD bash
