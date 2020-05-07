@echo off
color 0a
:inicio
cls
echo ====================
echo =       menu       =
echo ====================
echo 1 desconectar de red
echo 2 conectar a red
echo 3 ver direccion IP
echo 4 ping
echo 5 traceroute
echo ====================
echo introduce cualquier otro boton para salir
set /p accion=accion a selecionar=
if "%accion%"== "1" goto 1
if "%accion%"== "2" goto 2
if "%accion%"== "3" goto 3
if "%accion%"== "4" goto 4
if "%accion%"== "5" goto 5
exit
:1
cls
echo desconectando
ipconfig /release
echo desconectado con exito
pause
goto inicio


:2
cls
echo reconectando
ipconfig /renew
echo reconectado con exito
pause
goto inicio


:3
cls
echo ============================
echo 1 ver mi IP
echo 2 averiguar IP de pagina web
echo ============================
set /p iptool=selecciona herramienta=
if "%iptool%"== "2" goto webIP
cls
ipconfig
pause
goto inicio
:webIP
cls
echo ejemplo
echo nslookup www.google.com
set /p ejecutar=introduzca nslookup (url)=
cls
%ejecutar%
pause
goto inicio

:4
cls
echo ejemplo
echo ping 192.168.1.1
set /p ejecutar=introduzca ping (direccion ip)=
cls
%ejecutar%
pause
goto inicio

:5
cls
echo ejemplos
echo tracert 192.168.1.1
echo tracert www.google.com
set /p ejecutar=introduzca tracert (url o IP)=
cls
%ejecutar%
pause
goto inicio