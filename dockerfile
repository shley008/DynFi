FROM azul/zulu-openjdk-alpine:18-latest
WORKDIR .
ADD data /data
ENTRYPOINT [ "java", "-jar", "/data/app/dynfi-app.jar" ]
CMD [ "--config", "/data/conf/dynfi.conf" ]