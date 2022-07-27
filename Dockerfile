FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y build-essential

WORKDIR /ssb-dbgen

COPY . /ssb-dbgen

RUN make && chmod a+x docker-entrypoint.sh

VOLUME /data

ENTRYPOINT [ "./docker-entrypoint.sh" ]
