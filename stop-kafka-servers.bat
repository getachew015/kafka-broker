@ECHO OFF
ECHO **** stopping all kafka servers ****
::server-3 stopped
start /b bin\windows\kafka-server-stop.bat config/server-3.properties
ping 127.0.0.1 -n 3 > nul
::server-2 stopped
start /b bin\windows\kafka-server-stop.bat config/server-2.properties
::server-1 stopped
start /b bin\windows\kafka-server-stop.bat config/server-1.properties
:: admin server stopped
start /b bin\windows\kafka-server-stop.bat config/server.properties
::zookeeper stopped
start /b bin\windows\zookeeper-server-stop.bat config\zookeeper.properties
ECHO **** kafka shut down completed ***






