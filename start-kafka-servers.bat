@ECHO OFF

::zookeeper started
ECHO **** starting kafka zookeeper ****
start bin\windows\zookeeper-server-start.bat config\zookeeper.properties
ECHO **** sleeping for 3 seconds to finish zookeeper booting up ****
ping 127.0.0.1 -n 4 > nul

ECHO **** starting kafka brokers as admin localhost:9092, server-1 localhost:9093, server-2 localhost:9094, server-3 localhost:9095 ***
::admin broker started
ECHO **** starting kafka brokers as admin on localhost:9092 ***
start bin\windows\kafka-server-start.bat config/server.properties
ECHO **** sleeping for 2 seconds to finish admin broker booting up ****
ping 127.0.0.1 -n 3 > nul
::server-1 started
ECHO **** starting kafka brokers as server-1 on localhost:9093 ***
start bin\windows\kafka-server-start.bat config/server-1.properties
ECHO **** sleeping for 2 seconds to finish server-1 broker booting up ****
ping 127.0.0.1 -n 3 > nul
::server-2 started
ECHO **** starting kafka brokers as server-2 on localhost:9094 ***
start bin\windows\kafka-server-start.bat config/server-2.properties
ECHO **** sleeping for 2 seconds to finish server-2 broker booting up ****
ping 127.0.0.1 -n 3 > nul
::server-3 started
ECHO **** starting kafka brokers as server-3 on localhost:9095 ***
start bin\windows\kafka-server-start.bat config/server-3.properties
ECHO **** sleeping for 2 seconds to finish server-3 broker booting up ****
ping 127.0.0.1 -n 3 > nul