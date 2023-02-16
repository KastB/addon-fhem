ARG BUILD_FROM
ARG BUILD_ARCH

FROM $BUILD_FROM
LABEL maintainer="kastbernd@gmx.de"

# make sure GID for dialout group matches "Home Assistant Operating System" (dialout:x:18:)
RUN sed -i "s/^dialout\:.*/dialout\:x\:18/" /etc/group

# Copy data for add-on

COPY run.sh /
RUN rm -rf /opt/fehm && chmod a+x /run.sh

WORKDIR "/"
ENTRYPOINT [ ]
CMD [ "/run.sh" ]
