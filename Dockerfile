FROM apache/apisix:3.14.1-ubuntu

COPY ./conf/config.yaml /usr/local/apisix/conf/config.yaml
COPY ./conf/plugins /usr/local/apisix/conf/plugins/

EXPOSE 9080 9443 9081
ENV APISIX_ENABLE_ADMIN=true

CMD ["/usr/local/apisix/bin/apisix", "start", "-c", "/usr/local/apisix/conf/config.yaml"]
