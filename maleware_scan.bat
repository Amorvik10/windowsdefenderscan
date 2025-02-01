@echo off
echo Starting malware scan...

:: Set the log file path
set LOGFILE=%USERPROFILE%\Desktop\MalwareScanLog.txt

:: Run Windows Defender full scan
echo Running full system scan...
echo Logging results to %LOGFILE%...
"C:\Program Files\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2 > %LOGFILE% 2>&1

:: Check the result of the scan
if %ERRORLEVEL% equ 0 (
    echo Scan completed successfully. No threats found.
) else (
    echo Scan completed. Threats were found or an error occurred.
)

:: Open the log file
notepad %LOGFILE%

echo Done.
pause