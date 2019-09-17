@echo off
set /p path1=Path: 
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x
set fmonth=00%Month%
set fday=00%Day%
set today=%Year%%fmonth:~-2%%fday:~-2%
set saniye=00%time:~6,2%
set dakika=00%time:~3,2%
set saat=%time:~0,2%
CALL :TRIM %saat% saat
set saat=00%saat%
set suan=%today%_%saat:~-2%%dakika:~-2%%saniye:~-2%
"C:\Program Files\7-Zip\7z.exe" a "%path1%_%suan%.7z" %path1%

:TRIM
SET %2=%1
GOTO :EOF
