@echo off

set TASKNAME="Windows 10 Spotlight Images Archiver"

C:\Windows\System32\SchTasks /Delete /TN %TASKNAME% /F
