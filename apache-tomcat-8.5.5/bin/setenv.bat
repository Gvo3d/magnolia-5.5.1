@echo off
rem Check for the existence of $JDKPath (which might be a variable that was substituted by an external script, i.e installer)
if exist "$JDKPath" set JAVA_HOME=$JDKPath

rem Magnolia needs extra memory
set CATALINA_OPTS=%CATALINA_OPTS% -XX:MaxPermSize=256m -Xms64M -Xmx1024M -Djava.awt.headless=true

set CURDIR=%~dp0
if exist "%CURDIR%\magnolia_banner.txt" type %CURDIR%\magnolia_banner.txt
