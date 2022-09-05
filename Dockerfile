ARG BASE_IMAGE
FROM ${BASE_IMAGE}

COPY "files/start.sh" "/usr/libexec/start.sh"

USER root
CMD [ "/usr/libexec/start.sh" ]
