FROM azul/zulu-openjdk-alpine:18-latest
RUN mkdir -p /data/conf
WORKDIR /data/app
COPY dynfi-21.0.10-all.jar .
COPY dynfi.conf /data/conf
VOLUME ["/data/db"]
VOLUME ["/data/conf"]
ENTRYPOINT [ "java", "-jar", "dynfi-21.0.10-all.jar", "--config dynfi.conf" ]


#FROM alpine:3.11.2
#RUN mkdir -p /data/conf
#WORKDIR /data/app
#COPY dynfi-21.0.5-all.jar .
#VOLUME ["/data/db"]
#VOLUME ["/data/conf"]
#CMD [ "java", "-jar", "dynfi-21.0.5-all.jar", "--config",  "/data/conf/custom.dynfi.conf" ]