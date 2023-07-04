@echo off
color a
title WinShopBETA
rd /s /q dw
mkdir dw
copy wget.exe dw
cd dw
cls

:menu
echo ---------------------------------------
echo  -        WinShop BETA V1.5          -
echo  -        BY Luan's SYSTEM           -             
echo ---------------------------------------
echo  -                                   -
echo  - 1- Steam                          -
echo  - 2- Epic Games                     -
echo  - 3- Google Chrome                  -
echo  -                                   -
echo ---------------------------------------
echo  - 4- Remove all download (optional) - 
echo ---------------------------------------
echo.
echo.
set /p op= Type the option you will install: 
cls

if %op% equ 1 goto stdw else goto er
if %op% equ 2 goto epdw else goto er
if %op% equ 3 goto gcdw else goto er
if %op% equ 4 goto rmdw else goto er

:er
title WinShopBETA
cls
goto menu


:stdw
cls
del /s /q SteamSetup.exe
cls
wget https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe
start SteamSetup.exe
echo ST DOWNLOADED > rclog.txt
title WinShopBETA
cls
goto menu

:epdw
cls
del /s /q "EpicInstaller-15.7.0.msi@launcherfilename=EpicInstaller-15.7.0.msi"
cls
wget https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Win32/EpicInstaller-15.7.0.msi?launcherfilename=EpicInstaller-15.7.0.msi
start EpicInstaller-15.7.0.msi@launcherfilename=EpicInstaller-15.7.0.msi
echo EP DOWNLOADED > rclog.txt
title WinShopBETA
cls
goto menu

:gcdw
cls
del /s /q ChromeSetup.exe
cls
wget https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BE44FC619-FE35-EA42-BDE5-EF0EA4D5F3E8%7D%26lang%3Dpt-PT%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26brand%3DJJTC%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe
start ChromeSetup.exe
echo GC DOWNLOADED > rclog.txt
title WinShopBETA
cls
goto menu

:rmdw
cd ..
rd /s /q dw
mkdir dw
copy wget.exe dw
cd dw
title WinShopBETA
cls
goto menu

