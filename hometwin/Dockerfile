# The add-on is the HomeTwin image plus a start script that reads the add-on's options.
FROM ghcr.io/all-self-hosted/hometwin:0.1.0
USER root
RUN apk add --no-cache jq
COPY run.sh /run.sh
RUN chmod 755 /run.sh
ENTRYPOINT ["/run.sh"]
CMD []
