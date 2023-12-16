#!/bin/bash
rm /app/dynfi.conf

cat >/app/dynfi.conf <<EOL
#This is DynFi Manager configuration file.
#This file must follow properties format: https://en.wikipedia.org/wiki/.properties.
#Run `dynfi help` or visit http://dynfi.com for more help.
ipAndport=$ipAndport
useHttps=$useHttps
mongoClientUri=$mongoClientUri
mongoDatabase=$mongoDatabase
corsAllowOrigin=$corsAllowOrigin
connectionAgentPort=$connectionAgentPort
deviceCommandTimeoutInSeconds=$deviceCommandTimeoutInSeconds
deviceConnectionTimeoutInSeconds=$deviceConnectionTimeoutInSeconds
rebootCheckInMinutes=$rebootCheckInMinutes
periodicTasksDisabled=$periodicTasksDisabled
beatStartAfterSeconds=$beatStartAfterSeconds
beatEverySeconds=$beatEverySeconds
deviceTaskWorkers=$deviceTaskWorkers
keepLogsForDays=$keepLogsForDays
directViewConnectTimeoutInMilliseconds=$directViewConnectTimeoutInMilliseconds
directViewConnectionRequestTimeoutInMilliseconds=$directViewConnectionRequestTimeoutInMilliseconds
directViewMaxOutgoingConnections=$directViewMaxOutgoingConnections
directViewSocketTimeoutInMilliseconds=$directViewSocketTimeoutInMilliseconds
tryGoingBackToMainConnectionAddressEveryMinutes=$tryGoingBackToMainConnectionAddressEveryMinutes
cleanStaleSshConnectionsEveryMinutes=$cleanStaleSshConnectionsEveryMinutes
jwtKey=$jwtKey
EOL

java -jar /app/dynfi.jar --config /app/dynfi.conf