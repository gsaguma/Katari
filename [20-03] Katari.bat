@echo off
title Katari v1.0
color e
mode 70,30

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
echo              [2] Cambiar clave de pc
echo              [3] Contactar al creador
echo              [4] Salir                         
echo.
echo.
set /p menu=Opcion: 
if "%menu%"=="1" goto op1
if "%menu%"=="2" goto op2
if "%menu%"=="3" goto op3
if "%menu%"=="4" goto salir

:op1
echo.
set /p red=Nombre de la Red: 
netsh wlan show profile name="%red%" key=clear>apuntes.txt
echo  [*] Clave guardada.
pause>nul
cls
goto inicio

:op2
echo.
set /p usuario=Usuario: 
net user "%usuario%" *
pause>nul
cls
goto inicio

:op3
echo.
echo        +++++++++++++++++++++++++++++
echo        + Github:     gsaguma       +
echo        + Discord:   saguma#7066    +
echo        +++++++++++++++++++++++++++++
pause>nul
cls
goto inicio

:salir
cls&exit