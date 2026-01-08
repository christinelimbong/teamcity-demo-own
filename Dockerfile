FROM apache/apisix:3.14.1-ubuntu

EXPOSE 9080 9180

CMD ["apisix", "start", "-c", "/usr/local/apisix/conf/config.yaml"]
