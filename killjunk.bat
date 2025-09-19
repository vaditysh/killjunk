@echo off
::
:: no "for /f" only manual stuff
:: function taskkills unnecessary processes
:: example is 
:: taskkill /f /im "svchost.exe" >nul 2>&1
:: obviously dont do that too 
:: if u wanna add sm just make sure it doesnt affect system resources, or stuff like conhosts and etc.
:: quick explanation for each of these processes:
:: OneDrive.exe - just useless onedrive sync, doesnt rlly affect stuff
:: SearchIndexer.exe - runs in the background, responsible for searches in windows menu, but doesnt affect stuff
:: RuntimeBroker - responsible for the perms for UWP apps, also not rlly needed
:: YourPhone.exe - it just simply syncs your phone with pc, no one uses it these days
:: MicrosoftEdgeUpdate.exe - the garbage microsoft edge updating module
:: SkypeApp.exe - skype stuff, who uses it these days
:: Teams.exe - unless youre a corporate ceo you dont need this at all
:: WidgetService.exe - widget stuff, not rlly important
:: GameBar.exe - gamebar, useless gaming "recording" program, built-in
:: XboxAppServices.exe - xbox link, doesnt matter unless ur using some xbox stuff
:: WSearchIndexer.exe - pre-indexer for search, eats some cpu
:: you should now understand these i think
:: this also deletes temporary files. an example is this
:: 
:: cd %temp% & del filenameexample.txt
:: 
:: you cant use it sadly, that just wont delete all files being temporary.
:: instead, use cleanmgr
::
:: cleanmgr /sagerun:1 
::
:: cleanmgr can quickly delete all temp files in one go, using one command too
::
:: now if virustotal ever flags this as malicious, also microsoft defender can:
:: this might be caused because this disables microsoft's favorite "safe" features for them to spy on u
:: basically malicious telemetries that do NOTHING
::


echo [+] Killing OneDrive.exe...
taskkill /f /im "OneDrive.exe" >nul 2>&1
echo [+] Killing YourPhone.exe...
taskkill /f /im "YourPhone.exe" >nul 2>&1
echo [+] Killing MicrosoftEdgeUpdate.exe...
taskkill /f /im "MicrosoftEdgeUpdate.exe" >nul 2>&1
echo [+] Killing SkypeApp.exe...
taskkill /f /im "SkypeApp.exe" >nul 2>&1
echo [+] Killing Teams.exe...
taskkill /f /im "Teams.exe" >nul 2>&1
echo [+] Killing WidgetService.exe...
taskkill /f /im "WidgetService.exe" >nul 2>&1
echo [+] Killing GameBar.exe...
taskkill /f /im "GameBar.exe" >nul 2>&1
echo [+] Killing XboxAppServices.exe...
taskkill /f /im "XboxAppServices.exe" >nul 2>&1
echo [+] Killing WSearchIndexer.exe...
taskkill /f /im "WSearchIndexer.exe" >nul 2>&1
:: disables useless telemetries

echo [+] Disabling DiagTrack telemetry service...
sc config DiagTrack start= disabled >nul 2>&1
sc stop DiagTrack >nul 2>&1
:: xbox stuff terminated
:: dont use this program with xbox stuff connected

echo [+] Disabling XblAuthManager...
sc config XblAuthManager start= disabled >nul 2>&1
sc stop XblAuthManager >nul 2>&1
echo [+] Disabling XblGameSave...
sc config XblGameSave start= disabled >nul 2>&1
sc stop XblGameSave >nul 2>&1
echo [+] Disabling XboxNetApiSvc...
sc config XboxNetApiSvc start= disabled >nul 2>&1
sc stop XboxNetApiSvc >nul 2>&1
:: connected devices OFF.

echo [+] Disabling CDPUserSvc (Connected Devices Platform)...
sc config CDPUserSvc start= disabled >nul 2>&1
sc stop CDPUserSvc >nul 2>&1
:: disable windows error feedback
:: windows doesnt care anyway, nor microsoft does

echo [+] Disabling WerSvc (Windows Error Reporting)...
sc config WerSvc start= disabled >nul 2>&1
sc stop WerSvc >nul 2>&1

:: remote registries termination, is never used if not in business or corporation systems

echo [+] Disabling RemoteRegistry...
sc config RemoteRegistry start= disabled >nul 2>&1
sc stop RemoteRegistry >nul 2>&1

:: disable insider service

echo [+] Disabling wisvc (Windows Insider Service)...
sc config wisvc start= disabled >nul 2>&1
sc stop wisvc >nul 2>&1

:: windows update medic services
:: this is like using wet wipes on internal bleeding

echo [+] Disabling WaaSMedicSvc (Windows Update Medic Service)...
sc config WaaSMedicSvc start= disabled >nul 2>&1
sc stop WaaSMedicSvc >nul 2>&1

echo [+] Performing quick storage debloat...
cleanmgr /sagerun:1
echo [+] Debloat complete. System should remain fully functional.
pause 
exit
:: if u didnt get what this does, check out the readme NOW.
:: check out the readme NOW.
:: check out the readme NOW.
:: check out the readme NOW.
:: check out the readme NOW.

:: check out the readme NOW.
:: check out the readme NOW.


