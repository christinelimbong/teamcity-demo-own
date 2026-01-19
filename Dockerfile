FROM tomcat:9.0-jdk17

ARG DOCKER_TAG
ARG GIT_COMMIT

RUN mkdir -p /usr/local/tomcat/webapps/ROOT && \
    echo "<h1>TeamCity AUTO BUILD OK</h1>" \
    "<p>Version: ${DOCKER_TAG}</p>" \
    "<p>Commit: ${GIT_COMMIT}</p>" \
    "<p>BUILD TIME: $(date)</p>" \
    > /usr/local/tomcat/webapps/ROOT/index.html
