FROM isaackuang/alpine-base:3.13

RUN cd /tmp && \
    wget 'http://openresty.org/package/admin@openresty.com-5ea678a6.rsa.pub' && \
    mv 'admin@openresty.com-5ea678a6.rsa.pub' /etc/apk/keys/ && \
    echo "http://openresty.org/package/alpine/v3.13/main" \
    | tee -a /etc/apk/repositories && \
    apk update && apk --progress --no-cache add openresty

COPY config /
