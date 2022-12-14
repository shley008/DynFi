FROM azul/zulu-openjdk-alpine:18-latest
COPY dynfi-23.0.0-all.jar /tmp
ENV conf/dynfi.conf /tmp/dynfi.conf
ENTRYPOINT [ "java", "-jar", "/tmp/dynfi-23.0.0-all.jar" ]
CMD [ "--config", "/tmp/dynfi.conf" ]