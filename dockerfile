FROM azul/zulu-openjdk:11
MAINTAINER shley008
RUN apt update && apt install curl wget -y
RUN mkdir /app
RUN mkdir /scripts
ADD dynfiinstall.sh /scripts/dynfiinstall.sh
ADD dynficonf_gen.sh /scripts/dynficonf_gen.sh
RUN chmod +x /scripts/dynfiinstall.sh
RUN chmod +x /scripts/dynficonf_gen.sh
RUN sh /scripts/dynfiinstall.sh
ENV ipAndport=0.0.0.0:9090
ENV useHttps=false
ENV mongoClientUri=mongodb://dynfidb
ENV mongoDatabase=dynfidb
ENV corsAllowOrigin=true
ENV connectionAgentPort=2467
ENV deviceCommandTimeoutInSeconds=6000
ENV deviceConnectionTimeoutInSeconds=720
ENV rebootCheckInMinutes=5
ENV periodicTasksDisabled=false
ENV beatStartAfterSeconds=30
ENV beatEverySeconds=30
ENV deviceTaskWorkers=2
ENV keepLogsForDays=366
ENV directViewConnectTimeoutInMilliseconds=60000
ENV directViewConnectionRequestTimeoutInMilliseconds=-1
ENV directViewMaxOutgoingConnections=120
ENV directViewSocketTimeoutInMilliseconds=-1
ENV tryGoingBackToMainConnectionAddressEveryMinutes=5
ENV cleanStaleSshConnectionsEveryMinutes=5
ENV jwtKey=eyJhbGciOiJIUzI1NiJ9.eyJSb2xlIjoiQWRtaW4iLCJJc3N1ZXIiOiJJc3N1ZXIiLCJVc2VybmFtZSI6IkphdmFJblVzZSIsImV4cCI6MTY5MjQwNDI1NiwiaWF0IjoxNjkyNDA0MjU2fQ.P9VT4N9ATcJDHK-LSHEm6KjsIaB2LJdKKlsyCihTBnA
CMD sh /scripts/dynficonf_gen.sh