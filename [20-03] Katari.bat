@echo off
title Katari v1.1
color e
mode 65,30

:inicio
echo.
echo   __  __     ______     ______   ______     ______     __    
echo  /\ \/ /    /\  __ \   /\__  _\ /\  __ \   /\  == \   /\ \  
echo  \ \  _"-.  \ \ \__\\  \/_/\ \/ \ \ \__\\  \ \  __<   \ \ \ 
echo   \ \_\ \_\  \ \_\ \_\    \ \_\  \ \_\ \_\  \ \_\ \_\  \ \_\ 
echo    \/_/\/_/   \/_/\/_/     \/_/   \/_/\/_/   \/_/ /_/   \/_/ 
echo                                                    -by Saguma
echo.
echo        ********************************************
echo        *  Bienvenido. Gracias por usar mi codigo  *
echo        ********************************************
echo              [1] Crackear red wifi
echo              [2] Crackear clave de pc
echo              [3] Info sobre el script
echo              [4] Salir                         
echo.
echo.
set /p menu=Opcion: 
if "%menu%"=="1" goto op1
if "%menu%"=="2" goto op2
if "%menu%"=="3" goto op3
if "%menu%"=="4" goto salir

:op1
cls
netsh wlan show profiles
echo.
echo              --------------------------------
echo              - Estas redes pueden hackearse - 
echo              --------------------------------
echo.
set /p red=Nombre de la Red: 
netsh wlan show profile name="%red%" key=clear>apuntes.txt
echo.
echo  [*] Clave guardada. Revisa el archivo apuntes en el escritorio.
pause>nul
cls
goto inicio

:op2
cls
net user
echo.
echo             ------------------------------
echo             - Escribe el primer usuario  -
echo             ------------------------------
set /p usuario=Usuario: 
net user "%usuario%" *
pause>nul
cls
goto inicio

:op3
cls
echo.
echo   __  __     ______     ______   ______     ______     __    
echo  /\ \/ /    /\  __ \   /\__  _\ /\  __ \   /\  == \   /\ \  
echo  \ \  _"-.  \ \ \__\\  \/_/\ \/ \ \ \__\\  \ \  __<   \ \ \ 
echo   \ \_\ \_\  \ \_\ \_\    \ \_\  \ \_\ \_\  \ \_\ \_\  \ \_\ 
echo    \/_/\/_/   \/_/\/_/     \/_/   \/_/\/_/   \/_/ /_/   \/_/ 
echo                                                    -by Saguma
echo.
echo.
echo                 +++++++++++++++++++++++++++++++
echo                 +  Github:     gsaguma        +
echo                 +  Discord:   saguma#7066     +
echo                 +++++++++++++++++++++++++++++++
echo.
echo.
echo.
echo                 ===============================
echo                 =      CAMBIOS REALIZADOS     =
echo                 = Notas de guia en comandos   =
echo                 = Agregado apartado de info   =
echo                 ===============================
pause>nul
cls
goto inicio

:salir
cls&exit
