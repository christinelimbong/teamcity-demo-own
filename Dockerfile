FROM tomcat:9-jdk17

ARG DOCKER_TAG
ARG GIT_COMMIT

ENV DOCKER_TAG=${DOCKER_TAG}
ENV GIT_COMMIT=${GIT_COMMIT}

RUN rm -rf /usr/local/tomcat/webapps/*
RUN mkdir -p /usr/local/tomcat/webapps/ROOT

RUN echo "<h1>Tomcat AUTO REDEPLOY OK</h1>" \
    "<p>Version TAG: ${DOCKER_TAG}</p>" \
    "<p>Commit: ${GIT_COMMIT}</p>" \
    > /usr/local/tomcat/webapps/ROOT/index.html

EXPOSE 8080
CMD ["catalina.sh", "run"]
