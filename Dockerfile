FROM alpine:3.12
COPY . /var/code/blog/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories && \
    apk add bash && \
    mv /var/code/blog/start.sh /var/code/start.sh && \
    chmod u+x /var/code/start.sh && \
    mkdir -p /var/www

WORKDIR /var/www

CMD ["/bin/bash", "/var/code/start.sh"]
