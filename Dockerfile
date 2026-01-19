RUN echo "<h1>TeamCity AUTO BUILD OK</h1>" \
    "<p>Version: ${DOCKER_TAG}</p>" \
    "<p>Commit: ${GIT_COMMIT}</p>" \
    "<p>BUILD TIME: $(date)</p>" \
    > /usr/local/tomcat/webapps/ROOT/index.html
