@echo off
color 0a
:inicio
title web hacktools v1.9
cls
echo ==========================
echo =          menu          =
echo ==========================
echo 1 desconectar de red
echo 2 conectar a red
echo 3 herramientas de IP y MAC
echo 4 ping y perdida de paquetes
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
title desconectando
cls
echo desconectando
ipconfig /release
title desconectado con exito
echo desconectado con exito
pause
goto inicio


:2
title reconectando
cls
echo reconectando
ipconfig /renew
title reconectado con exito
echo reconectado con exito
pause
goto inicio


:3
title herramientas ip y mac
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
if "%iptool%"== "3" goto mimac
if "%iptool%"== "4" goto web tracker
if "%iptool%"== "5" goto ip tracker
title ver mi ip
cls
ipconfig
pause
goto inicio
:webip
title ip search
cls
echo ejemplo
echo nslookup www.google.com
set /p ejecutar=introduzca nslookup (url)=
cls
%ejecutar%
pause
goto inicio
:mimac
title ver mi mac
cls
getmac
pause
goto inicio
:web tracker
title localizador de url
cls
set /p track=introduce el enlace=
goto track
:ip tracker
title localizador de ip
cls
set /p track= introduce la direccion IP=
goto tracker
:tracker
start https://www.elhacker.net/geolocalizacion.html?host=%track%
pause
goto inicio

:4
title latencia y perdida de paquetes
cls
echo ejemplo
echo ping 192.168.1.1
set /p ejecutar=introduzca ping (direccion ip)=
cls
%ejecutar%
pause
goto inicio

:5
title trazado de ruta
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
title :(
cls
echo esta funcion aun no esta disponible,
echo consigue una version superior para
echo poder usarla
pause
goto inicio

:novedades
title novedades
cls
echo =======================
echo      novedades v 1.9
echo =======================
echo Ahora el titulo va
echo junto con la seccion
echo del programa
echo =======================
pause
goto inicio