FROM azul/zulu-openjdk-alpine:18-latest
RUN mkdir /data/app
RUN mkdir /data/conf
COPY dynfi-23.0.0-all.jar /data/app
COPY /conf/dynfi.conf /data/conf
ENTRYPOINT [ "java", "-jar", "/data/app/dynfi-23.0.0-all.jar" ]
CMD [ "--config", "/data/conf/dynfi.conf" ]