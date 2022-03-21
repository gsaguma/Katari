@echo off
title Katari v1.1
color e
mode 75,30

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
echo              [5] Salir                         
echo.
echo.
set /p menu=Opcion: 
if "%menu%"=="1" goto op1
if "%menu%"=="2" goto op2
if "%menu%"=="3" goto op3
if "%menu%"=="4" goto salir

:op1
echo.
echo Nota:La red se debe haber usado al menos una vez en este dispositivo
set /p red=Nombre de la Red: 
netsh wlan show profile name="%red%" key=clear>apuntes.txt
echo  [*] Clave guardada.
pause>nul
cls
goto inicio

:op2
echo.
echo Nota: Usuario es el nombre de la pc
set /p usuario=Usuario: 
net user "%usuario%" *
pause>nul
cls
goto inicio

:op3
echo.
echo        +++++++++++++++++++++++++++++++
echo        +  Github:     gsaguma        +
echo        +  Discord:   saguma#7066     +
echo        +++++++++++++++++++++++++++++++
echo.
echo.
echo         |     CAMBIOS REALIZADOS     |
echo         |-> Notas de guía en comandos|
echo         |-> Agregado apartado de info|
pause>nul
cls
goto inicio

:salir
cls&exit
