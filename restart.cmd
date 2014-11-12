@echo off
echo KILL arma2oaserver.exe
taskkill /im arma2oaserver.exe
ping 127.0.0.1 -n 10 >NUL
echo Pulling from GIT
c:
cd "c:\program files (x86)\git\bin"
git --git-dir=E:\DayZ-Epoch\.git pull origin master 
echo Packing PBO!
"C:\Program Files\PBO Manager v.1.4 beta\PBOConsole.exe" -pack "E:\DayZ-Epoch\@DayZ_Epoch_Server\addons\dayz_server" "E:\DayZ-Epoch\@DayZ_Epoch_Server\addons\dayz_server.pbo"
e:
cd "E:\DayZ-Epoch\"
START "arma2" /min "E:\DayZ-Epoch\arma2oaserver.exe" "-port=2302" "-config=instance_11_Chernarus\config.cfg" "-cfg=instance_11_Chernarus\basic.cfg" "-profiles=instance_11_Chernarus" -name=instance_11_Chernarus "-mod=@DayZ_Epoch;@DayZ_Epoch_Server;" "-world=Chernarus" "-maxmem=2047" "-noCB"
ping 127.0.0.1 -n 20 >NUL
echo START BEC
cd "E:\DayZ-Epoch\BEC"
START "" "E:\DayZ-Epoch\BEC\bec.exe"
exit