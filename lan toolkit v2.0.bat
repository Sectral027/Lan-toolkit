@echo off
color 0a
:inicio
title web hacktools v2
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
echo 7 escaner de red
echo 8 apagar equipo en red
echo 9 salir
echo ==========================
echo 10 novedades de esta version
echo ==========================
set /p accion=accion a selecionar=
if "%accion%"== "1" goto 1
if "%accion%"== "2" goto 2
if "%accion%"== "3" goto 3
if "%accion%"== "4" goto 4
if "%accion%"== "5" goto 5
if "%accion%"== "6" goto no lista
if "%accion%"== "7" goto 7
if "%accion%"== "8" goto 8
if "%accion%"== "10" goto novedades
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

:7
title IMPORTANTE
cls
echo NOTA IMPORTANTE
echo este escaneo solo funciona
echo con ordenadores con windows
echo si quiere salir reinicie el programa
pause
title escaneo de red
cls
net view
pause
goto inicio

:8
title INSTRUCCIONES
cls
echo INSTRUCCIONES
echo tras haber completado el escaneo
echo pulsa cualquier boton para abrir el dialogo de
echo apagado remoto, para agregar un equipo tienes que
echo introducir el nombre que aparece en los resultados
echo del escaneo, el resto es pan comido
pause
title apagado remoto
cls
net view
pause
shutdown -i
pause
cls
echo ya deberia de estar listo
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
echo      novedades v 2.0
echo =======================
echo Se a�aden las funciones de
echo escaneo de red y apagado
echo remoto
echo =======================
pause
goto inicio