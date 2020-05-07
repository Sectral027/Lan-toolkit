@echo off
color 0a
:inicio
cls
echo ==========================
echo =          menu          =
echo ==========================
echo 1 desconectar de red
echo 2 conectar a red
echo 3 herramientas de IP y MAC
echo 4 ping
echo 5 traceroute
echo 6 correo electronico falso
echo 7 salir
echo ==========================
echo 8 novedades de esta version
echo ==========================
set /p accion=accion a selecionar=
if "%accion%"== "1" goto 1
if "%accion%"== "2" goto 2
if "%accion%"== "3" goto 3
if "%accion%"== "4" goto 4
if "%accion%"== "5" goto 5
if "%accion%"== "6" goto no lista
if "%accion%"== "8" goto novedades
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
echo 3 ver mi MAC
echo 4 rastrear pagina web
echo 5 rastrear direccion IP
echo ============================
set /p iptool=selecciona herramienta=
if "%iptool%"== "2" goto webip
if "%iptool%"== "3" goto webmac
if "%iptool%"== "4" goto web tracker
if "%iptool%"== "5" goto ip tracker
cls
ipconfig
pause
goto inicio
:webip
cls
echo ejemplo
echo nslookup www.google.com
set /p ejecutar=introduzca nslookup (url)=
cls
%ejecutar%
pause
goto inicio
:webmac
cls
getmac
pause
goto inicio
:web tracker
cls
set /p track=introduce el enlace=
goto track
:ip tracker
cls
set /p track= introduce la direccion IP=
goto tracker
:tracker
start https://www.elhacker.net/geolocalizacion.html?host=%track%
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

:no lista
cls
echo esta funcion aun no esta disponible,
echo consigue una version superior para
echo poder usarla
pause
goto inicio

:novedades
cls
echo =======================
echo      novedades v 1.8
echo =======================
echo Se ha añadido este menu
echo y se ha solucionado un
echo error del menu de 
echo herramientas de IP y MAC
echo =======================
pause
goto inicio