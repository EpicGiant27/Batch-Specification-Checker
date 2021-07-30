@echo off
title Spec Checker
echo -Sizes In Bytes.-
echo.
echo -===== CPU =====-
wmic cpu get name, maxclockspeed, currentclockspeed
echo -===== GPU =====-
wmic path win32_VideoController get name
echo -= Motherboard==-
wmic baseboard get product,Manufacturer.
echo -===== RAM =====-
wmic MEMORYCHIP get  DeviceLocator, Capacity, Speed
echo -==== DRIVE ====-
wmic diskdrive get model,serialNumber,size,mediaType
pause
