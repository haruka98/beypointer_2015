@echo off
@mode con cols=25 lines=10
@title Beypointer
cls
echo.
echo.
echo.
echo.
echo Made by
echo Beyblade+
timeout /T 3 /nobreak>Nul
goto Start_EN
:Start
cls
echo -----------------------
echo Beypointer - Hauptmenue
echo -----------------------
echo.
echo 1) Start
echo 2) Optionen
echo 3) Beenden
set /p Menue=
if %Menue%==1 goto 1
if %Menue%==2 goto Optionen
if %Menue%==3 goto exit
goto Start
:exit
exit
:Optionen
cls
echo -----------------------
echo Optionen
echo -----------------------
echo.
echo 1) Farbe
echo 2) Reset Score
echo 3) Sprache
echo 4) Zurueck
set /p Optionen=
if %Optionen%==1 goto color
if %Optionen%==2 goto Reset
if %Optionen%==3 goto Sprache
if %Optionen%==4 goto Start
goto Optionen
:1
cls
for /F "usebackq" %%a in (./Beypoints.txt) do set Beypoints=%%a
echo -----------------------
echo Punkte
echo -----------------------
echo.
echo Beypoints: %Beypoints%
echo Gewonnene Punkte eingeben
echo Mit "exit" kommst du ins Hauptmenue
set /p Punkte=
if %Punkte%==exit goto Start
set /a Summe=%Beypoints%+%Punkte%
set /a Beypoints=%Summe%
echo %Beypoints% >> ./Beypoints.txt
goto 1
:color
cls
echo -----------------------
echo Farben
echo -----------------------
echo.
echo 2=Gruen; 4=Rot; 9=Blau
echo e=Gelb; f=reset
set /p color=Farbe:
color %color%
goto Optionen
:Reset
del Beypoints.txt
echo.>Beypoints.txt
color f
goto Start
:Sprache
cls
echo -----------------------
echo Sprache
echo -----------------------
echo.
echo 1) Deutsch
echo 2) English
set /p Sprache=
if %Sprache%==1 goto Optionen
if %Sprache%==2 goto Optionen_EN
goto Optionen
:Start_EN
cls
echo -----------------------
echo Beypointer - Main menu
echo -----------------------
echo.
echo 1) Start
echo 2) Options
echo 3) Exit
set /p Menue=
if %Menue%==1 goto 1_EN
if %Menue%==2 goto Optionen_EN
if %Menue%==3 goto exit
goto Start_EN
:Optionen_EN
cls
echo -----------------------
echo Options
echo -----------------------
echo.
echo 1) Color
echo 2) Reset Score
echo 3) Language
echo 4) Back
set /p Optionen=
if %Optionen%==1 goto color_EN
if %Optionen%==2 goto Reset_EN
if %Optionen%==3 goto Sprache_EN
if %Optionen%==4 goto Start_EN
goto Optionen_EN
:1_EN
cls
for /F "usebackq" %%a in (./Beypoints.txt) do set Beypoints=%%a
echo -----------------------
echo Points
echo -----------------------
echo.
echo Beypoints: %Beypoints%
echo Enter Points
echo Use "exit" to exit
set /p Punkte=
if %Punkte%==exit goto Start_EN
set /a Summe=%Beypoints%+%Punkte%
set /a Beypoints=%Summe%
echo %Beypoints% >> ./Beypoints.txt
goto 1_EN
:color_EN
cls
echo -----------------------
echo Color
echo -----------------------
echo.
echo 2=Green; 4=Red; 9=Blue
echo e=Yellow; f=reset
set /p color=Color:
color %color%
goto Optionen_EN
:Reset_EN
del Beypoints.txt
echo.>Beypoints.txt
color f
goto Start_EN
:Sprache_EN
cls
echo -----------------------
echo Language
echo -----------------------
echo.
echo 1) Deutsch
echo 2) English
set /p Sprache=
if %Sprache%==1 goto Optionen
if %Sprache%==2 goto Optionen_EN
goto Optionen_EN