@echo off
goto main

:main
echo Welcome to MultiMessenger by Message
echo What would you like to do?
echo 
echo 1) Download a live messenger version
echo 2) Open a live messenger version
echo 3) Uninstall a live messenger version
echo 4) Exit
set /p input1= Type the number of what you would like to do, then press enter: 
if %input1%==1 goto Download
if %input1%==2 goto VersionChecker
if %input1%==3 goto VersionChecker
if %input1%==4 exit

:Download
echo Which version would you like to download?
echo 
echo 1) Windows Live Messenger 2009
echo 2) Windows Live Messenger 8.5
echo 3) MSN Messenger 7.5
echo 4) Windows Live Messenger 6.2
echo 5) Windows Live Messenger 5
set /p input2= Type the number of what you would like to do, then press enter: 
goto DLClient

:Open
echo Please select the Windows Live Messenger version to open
%Version9%
%Version8%
%Version7%
%Version6%
%Version5%
%Version9Patched%
%Version8Patched%
%Version7Patched%
%Version6Patched%
%Version5Patched%
set /p versionselect= Type the number of what you would like to do, then press enter: 
goto OpenHandler

:DLClient
echo Would you like a patched Escargot Windows Live Messenger version?
echo 1) Yes
echo 2) No
set /p input3= Type the number of what you would like to do, then press enter: 
if %input3%==1 goto GetPatchedClient
if %input3%==2 goto GetNormalClient

:GetNormalClient
if %input2%==2 ( curl https://hypocracys.github.io/files/Messenger8.zip > %HOMEPATH%\Messenger8.zip
unzip %HOMEPATH%\Messenger8.zip -d %HOMEPATH%\Messenger8 
echo Done!
pause
goto main ) else ( goto 2 ) 

:2
if %input2%==1 ( curl https://hypocracys.github.io/files/Messenger2009.zip > %HOMEPATH%\Messenger2009.zip
unzip %HOMEPATH%\Messenger2009.zip -d %HOMEPATH%\Messenger2009
echo Done!
pause
goto main
) else ( goto 3 )

:3 
if %input2%==3 ( curl https://hypocracys.github.io/files/Messenger7.zip > %HOMEPATH%\Messenger7.zip
unzip %HOMEPATH%\Messenger7.zip -d %HOMEPATH%\Messenger7
echo Done!
pause
goto main
) else ( goto 4 )

:4
if %input2%==4 ( curl https://hypocracys.github.io/files/Messenger6.zip > %HOMEPATH%\Messenger6.zip
unzip %HOMEPATH%\Messenger6.zip -d %HOMEPATH%\Messenger6
echo Done!
pause
goto main
) else ( goto 5 )

:5
if %input2%==5 ( curl https://hypocracys.github.io/files/Messenger5.zip > %HOMEPATH%\Messenger5.zip
unzip %HOMEPATH%\Messenger5.zip -d %HOMEPATH%\Messenger5
echo Done!
pause
goto main
) else ( echo Invalid number! )


:GetPatchedClient
if %input2%==1 ( curl https://hypocracys.github.io/files/Messenger2009Patched.zip > %HOMEPATH%\Messenger2009Patched.zip
unzip %HOMEPATH%\Messenger2009Patched.zip -d %HOMEPATH%\Messenger2009Patched
echo Done!
pause
goto main
) else ( goto patch2 )

:patch2
if %input2%==2 ( curl https://hypocracys.github.io/files/Messenger8Patched.zip > %HOMEPATH%\Messenger8Patched.zip
unzip %HOMEPATH%\Messenger8Patched.zip -d %HOMEPATH%\Messenger8Patched
echo Done!
pause
goto main
) else ( goto patch3 )

:patch3 
if %input2%==3 ( curl https://hypocracys.github.io/files/Messenger7Patched.zip > %HOMEPATH%\Messenger7Patched.zip
unzip %HOMEPATH%\Messenger7Patched.zip -d %HOMEPATH%\Messenger7Patched
echo Done!
pause
goto main
) else ( goto patch4 )

:patch4
if %input2%==4 ( curl https://hypocracys.github.io/files/Messenger6Patched.zip > %HOMEPATH%\Messenger6Patched.zip
unzip %HOMEPATH%\Messenger6Patched.zip -d %HOMEPATH%\Messenger6Patched
echo Done!
pause
goto main
) else ( goto patch5 )

:patch5
if %input2%==5 ( curl https://hypocracys.github.io/files/Messenger5Patched.zip > %HOMEPATH%\Messenger5Patched.zip
unzip %HOMEPATH%\Messenger5Patched.zip -d %HOMEPATH%\Messenger5Patched
echo Done!
pause
goto main
) else ( echo Invalid number! )

:VersionChecker
if exist %HOMEPATH%\Messenger8\Messenger\msnmsgr.exe (
set Version8=echo 2: Windows Live Messenger 8 ) else (
set Version8=echo 2: Windows Live Messenger 8 [not installed]
)
if exist "%HOMEPATH%\Messenger2009\Windows Live\Messenger\msnmsgr.exe" (
set Version9=echo 1: Windows Live Messenger 2009 ) else (
set Version9=echo 1: Windows Live Messenger 2009 [not installed]
)
if exist "%HOMEPATH%\Messenger7\MSN Messenger\msnmsgr.exe" (
set Version7=echo 3: MSN Messenger 7.5 ) else (
set Version7=echo 3: MSN Messenger 7.5 [not installed]
)
if exist "%HOMEPATH%\Messenger6\MSN Messenger\msnmsgr.exe" (
set Version6=echo 4: MSN Messenger 6.2 ) else (
set Version6=echo 4: MSN Messenger 6.2 [not installed]
)
if exist "%HOMEPATH%\Messenger5\MSN Messenger\msnmsgr.exe" (
set Version5=echo 5: MSN Messenger 5 ) else (
set Version5=echo 5: MSN Messenger 5 [not installed]
)
if exist "%HOMEPATH%\Messenger2009Patched\Windows Live\Messenger\msnmsgr.exe" (
set Version9Patched=echo 6: Windows Live Messenger 2009 Patched ) else (
set Version9Patched=echo 6: Windows Live Messenger 2009 Patched [not installed]
)
if exist "%HOMEPATH%\Messenger8Patched\Windows Live\Messenger\msnmsgr.exe" (
set Version8Patched=echo 7: Windows Live Messenger 8 Patched ) else (
set Version8Patched=echo 7: Windows Live Messenger 8 Patched [not installed]
)
if exist "%HOMEPATH%\Messenger7Patched\MSN Messenger\msnmsgr.exe" (
set Version7Patched=echo 8: MSN Messenger 7 Patched ) else (
set Version7Patched=echo 8: MSN Messenger 7 Patched [not installed]
)
if exist "%HOMEPATH%\Messenger6Patched\MSN Messenger\msnmsgr.exe" (
set Version6Patched=echo 9: MSN Messenger 6 Patched ) else (
set Version6Patched=echo 9: MSN Messenger 6 Patched [not installed]
)
if exist "%HOMEPATH%\Messenger5Patched\MSN Messenger\msnmsgr.exe" (
set Version5Patched=echo 10: MSN Messenger 5 Patched ) else (
set Version5Patched=echo 10: MSN Messenger 5 Patched [not installed]
)
if %input1%==3 (
goto rd /S /QManage ) else (
goto Open
)

:OpenHandler
if %versionselect%==1 start %HOMEPATH%"\Messenger2009\Windows Live\Messenger\msnmsgr.exe"
if %versionselect%==2 start %HOMEPATH%\Messenger8\Messenger\msnmsgr.exe
if %versionselect%==3 start %HOMEPATH%"\Messenger7\MSN Messenger\msnmsgr.exe"
if %versionselect%==4 start %HOMEPATH%"\Messenger6\MSN Messenger\msnmsgr.exe"
if %versionselect%==5 start %HOMEPATH%"\Messenger5\MSN Messenger\msnmsgr.exe"
if %versionselect%==6 start %HOMEPATH%"\Messenger2009Patched\Windows Live\Messenger\msnmsgr.exe"
if %versionselect%==7 start %HOMEPATH%"\Messenger8Patched\Windows Live\Messenger\msnmsgr.exe"
if %versionselect%==8 start %HOMEPATH%"\Messenger7Patched\MSN Messenger\msnmsgr.exe"
if %versionselect%==9 start %HOMEPATH%"\Messenger6Patched\MSN Messenger\msnmsgr.exe"
if %versionselect%==10 start %HOMEPATH%"\Messenger5Patched\MSN Messenger\msnmsgr.exe"
goto main

:rd /S /QManage
echo Please choose a version to uninstall
%Version9%
%Version8%
%Version7%
%Version6%
%Version5%
%Version9Patched%
%Version8Patched%
%Version7Patched%
%Version6Patched%
%Version5Patched%
set /p rd /S /Qversion= Type the number of what you would like to do, then press enter: 
goto uninstall

:uninstall
:rd /S /QNormalClient
if %rd /S /Qversion%==2 ( rd /S /Q %HOMEPATH%\Messenger8
echo Done!
pause
goto main ) else ( goto rd /S /Q2 ) 

:rd /S /Q2
if %rd /S /Qversion%==1 ( rd /S /Q %HOMEPATH%\Messenger2009
echo Done!
pause
goto main
) else ( goto rd /S /Q3 )

:rd /S /Q3 
if %rd /S /Qversion%==3 ( rd /S /Q %HOMEPATH%\Messenger7
echo Done!
pause
goto main
) else ( goto rd /S /Q4 )

:rd /S /Q4
if %rd /S /Qversion%==4 ( rd /S /Q %HOMEPATH%\Messenger6
echo Done!
pause
goto main
) else ( goto rd /S /Q5 )

:rd /S /Q5
if %rd /S /Qversion%==5 ( rd /S /Q %HOMEPATH%\Messenger5
echo Done!
pause
goto main
) else ( goto rd /S /QPatchedClient )


:rd /S /QPatchedClient
if %rd /S /Qversion%==6 ( rd /S /Q %HOMEPATH%\Messenger2009Patched
echo Done!
pause
goto main
) else ( goto rd /S /Qpatch2 )

:rd /S /Qpatch2
if %rd /S /Qversion%==7 ( rd /S /Q %HOMEPATH%\Messenger8Patched
echo Done!
pause
goto main
) else ( goto rd /S /Qpatch3 )

:rd /S /Qpatch3 
if %rd /S /Qversion%==8 ( rd /S /Q %HOMEPATH%\Messenger7Patched
echo Done!
pause
goto main
) else ( goto rd /S /Qpatch4 )

:rd /S /Qpatch4
if %rd /S /Qversion%==9 ( rd /S /Q %HOMEPATH%\Messenger6Patched
echo Done!
pause
goto main
) else ( goto rd /S /Qpatch5 )

:rd /S /Qpatch5
if %rd /S /Qversion%==10 (rd /S /Q %HOMEPATH%\Messenger5Patched
echo Done!
pause
goto main
) else ( echo Invalid number! )
