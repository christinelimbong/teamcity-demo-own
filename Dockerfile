FROM apache/apisix:3.14.1-ubuntu

COPY ./config.yaml /usr/local/apisix/conf/config.yaml

RUN chown apisix:apisix /usr/local/apisix/conf/config.yaml \
    && chmod 644 /usr/local/apisix/conf/config.yaml

EXPOSE 9080 9180

CMD ["sh", "-c", "apisix start -c /usr/local/apisix/conf/config.yaml"]
