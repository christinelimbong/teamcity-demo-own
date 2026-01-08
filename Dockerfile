# build trigger test - v1
FROM apache/apisix:3.14.1-ubuntu

# test auto redeploy

COPY ./config.yaml /usr/local/apisix/conf/config.yaml

EXPOSE 9080 9180

CMD ["sh", "-c", "apisix start -c /usr/local/apisix/conf/config.yaml && tail -f /dev/null"]
