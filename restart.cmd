@echo off
echo.
echo KILL arma2oaserver.exe
taskkill /im arma2oaserver.exe
echo.
ping 127.0.0.1 -n 10 >NUL
echo.
cd "E:\DayZ-Epoch\"
@start "arma2" /min "E:\DayZ-Epoch\arma2oaserver.exe" "-port=2302" "-config=instance_11_Chernarus\config.cfg" "-cfg=instance_11_Chernarus\basic.cfg" "-profiles=instance_11_Chernarus" -name=instance_11_Chernarus "-mod=@DayZ_Epoch;@DayZ_Epoch_Server;" "-world=Chernarus" "-maxmem=2047" "-noCB"
echo.
ping 127.0.0.1 -n 20 >NUL
echo START BEC
echo.
:: start bec

cd "E:\DayZ-Epoch\BEC"
START "" "E:\DayZ-Epoch\BEC\bec.exe"
exit