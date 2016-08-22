@echo off

set PATH=%~dp0
set COMMAND=%PATH%w10sia.bat
set TASKNAME="Windows 10 Spotlight Images Archiver"
set TIME=09:00
set SCHEDULE=DAILY

C:\Windows\System32\SchTasks /Create /SC %SCHEDULE% /TN %TASKNAME% /TR %COMMAND% /ST %TIME%
