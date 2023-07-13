ARG BUILD_FROM
FROM $BUILD_FROM

COPY run.sh /
RUN chmod a+x /run.sh

RUN \ 
apk add --no-cache \
&& curl -Lo /lx.zip https://api.localxpose.io/api/v2/downloads/loclx-linux-386.zip \
&& unzip -o /lx.zip -d /bin \
&& rm -f /lx.zip

RUN loclx --version
CMD [ "/run.sh" ]