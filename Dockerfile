FROM 10.0.60.124:5000/apache/apisix:3.14.1-ubuntu

RUN rm -rf /usr/local/tomcat/webapps/*

RUN mkdir -p /usr/local/tomcat/webapps/ROOT
RUN echo "<h1>Tomcat from TeamCity Build</h1>" \
  "<p>Build: \$BUILD_NUMBER</p>" \
  "<p>Commit: \$GIT_COMMIT</p>" \
  > /usr/local/tomcat/webapps/ROOT/index.html

EXPOSE 8080

CMD ["catalina.sh", "run"]
