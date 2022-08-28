@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)

echo Press "Ok" on the 3 popups. (Be patient with the 3rd one)
echo You should also reboot after the script exits. 
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr /skms kms8.msguides.com
slmgr /ato
echo Done!
timeout 2
