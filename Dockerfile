FROM ubuntu:trusty

RUN useradd -ms /bin/bash shbaam
USER shbaam
WORKDIR /home/shbaam

ADD hello.sh .
CMD ./hello.sh
