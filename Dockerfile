FROM ubuntu

WORKDIR /workspace

RUN apt update && \
    apt install -y wget

WORKDIR /code

COPY bin .

RUN wget https://viewsourcecode.org/code/perl/dog.txt && \
    mv dog.txt dog.pl && \
    chmod +x *

CMD "./run.sh"