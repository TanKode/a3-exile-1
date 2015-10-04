@echo off

:: KILL BATTLEYE IF IT ISN'T ALREADY
taskkill /im Bec.exe

echo Stopping the server for restart
echo Stopping arma3server2.exe ...
taskkill /f /im arma3server2.exe
echo Server is stopped now ... restarting
timeout /t 10
echo Starting Server
cd C:\Arma3Server\Arma3Exile
start "arma3" /min /high "arma3server2.exe" "-profiles=C:\Arma3Server\Arma3Exile\config" "-BEPath=C:\Arma3Server\Arma3Exile\battleye" "-config=C:\Arma3Server\Arma3Exile\config\config.cfg" "-cfg=C:\Arma3Server\Arma3Exile\config\basic.cfg" -port=2312 -world=empty -autoinit -high -loadMissionToMemory -noSound -malloc=system -nosplash -cpuCount=4 -maxmem=3047 "-mod=@asm;@Exile;@ExileServer;@infiSTAR_Exile"

::RESTARTING BATTLEYE
set becpath="C:\Arma3Server\bec"
cd /d %becpath%
start "" /min "bec.exe" -f exile.cfg
timeout 3
echo Battleye has started.. 