FROM fedora

WORKDIR /root/ts_server

ADD https://bellard.org/ts_server/ts_server-2023-03-15.tar.gz .

RUN dnf install -y libjpeg libmicrohttpd \
    && dnf clean all \
    && tar xf *tar.gz --strip-components 1 \
    && rm *tar.gz

CMD [ "./ts_server", "ts_server.cfg" ]
