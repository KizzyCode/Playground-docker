ARG BASE_IMAGE=alpine:latest
FROM ${BASE_IMAGE}

COPY "files/start.sh" "/usr/libexec/start.sh"

USER root
CMD [ "/usr/libexec/start.sh" ]
