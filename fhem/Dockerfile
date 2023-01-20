ARG BUILD_FROM
ARG BUILD_ARCH

FROM $BUILD_FROM
LABEL maintainer="kastbernd@gmx.de"

# Copy data for add-on

COPY run.sh /
RUN rm -rf /opt/fehm && chmod a+x /run.sh

WORKDIR "/"
ENTRYPOINT [ ]
CMD [ "/run.sh" ]
