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

:: killing OneDrive background sync client, useless if you don’t use cloud sync
echo [+] Killing OneDrive.exe...
taskkill /f /im "OneDrive.exe" >nul 2>&1

:: killing YourPhone, the phone sync app nobody uses anymore
echo [+] Killing YourPhone.exe...
taskkill /f /im "YourPhone.exe" >nul 2>&1

:: killing Microsoft Edge updater, runs silently and hogs resources for nothing
echo [+] Killing MicrosoftEdgeUpdate.exe...
taskkill /f /im "MicrosoftEdgeUpdate.exe" >nul 2>&1

:: killing Skype app, legacy junk, replaced by Teams anyway
echo [+] Killing SkypeApp.exe...
taskkill /f /im "SkypeApp.exe" >nul 2>&1

:: killing Teams, unless you’re corporate you don’t need this autostart hog
echo [+] Killing Teams.exe...
taskkill /f /im "Teams.exe" >nul 2>&1

:: killing Widgets service, powers the news/weather/ad panel, not important
echo [+] Killing WidgetService.exe...
taskkill /f /im "WidgetService.exe" >nul 2>&1

:: killing GameBar, useless Xbox overlay for recording, eats memory
echo [+] Killing GameBar.exe...
taskkill /f /im "GameBar.exe" >nul 2>&1

:: killing XboxAppServices, background Xbox integration, safe if you don’t use Xbox
echo [+] Killing XboxAppServices.exe...
taskkill /f /im "XboxAppServices.exe" >nul 2>&1

:: killing Windows Search Indexer, eats CPU/disk, only speeds up menu search
echo [+] Killing WSearchIndexer.exe...
taskkill /f /im "WSearchIndexer.exe" >nul 2>&1

:: disables useless telemetries, DiagTrack is Microsoft’s data collection service
echo [+] Disabling DiagTrack telemetry service...
sc config DiagTrack start= disabled >nul 2>&1
sc stop DiagTrack >nul 2>&1

:: xbox stuff terminated, don’t use this program with xbox stuff connected
:: XblAuthManager handles Xbox Live login, useless without Xbox
echo [+] Disabling XblAuthManager...
sc config XblAuthManager start= disabled >nul 2>&1
sc stop XblAuthManager >nul 2>&1

:: XblGameSave syncs Xbox game saves to the cloud, useless without Xbox
echo [+] Disabling XblGameSave...
sc config XblGameSave start= disabled >nul 2>&1
sc stop XblGameSave >nul 2>&1

:: XboxNetApiSvc manages Xbox multiplayer networking, useless without Xbox
echo [+] Disabling XboxNetApiSvc...
sc config XboxNetApiSvc start= disabled >nul 2>&1
sc stop XboxNetApiSvc >nul 2>&1

:: connected devices OFF, CDPUserSvc is for syncing phones/IoT devices, useless
echo [+] Disabling CDPUserSvc (Connected Devices Platform)...
sc config CDPUserSvc start= disabled >nul 2>&1
sc stop CDPUserSvc >nul 2>&1

:: disable windows error feedback, WerSvc just sends crash data to Microsoft
:: windows doesnt care anyway, nor microsoft does
echo [+] Disabling WerSvc (Windows Error Reporting)...
sc config WerSvc start= disabled >nul 2>&1
sc stop WerSvc >nul 2>&1

:: remote registries termination, RemoteRegistry allows remote reg editing
:: is never used if not in business or corporation systems
echo [+] Disabling RemoteRegistry...
sc config RemoteRegistry start= disabled >nul 2>&1
sc stop RemoteRegistry >nul 2>&1

:: disable insider service, nobody gets enrolled (foshu not u)
echo [+] Disabling wisvc (Windows Insider Service)...
sc config wisvc start= disabled >nul 2>&1
sc stop wisvc >nul 2>&1

:: windows update medic services, WaaSMedicSvc tries to repair Windows Update
:: this is like using wet wipes on internal bleeding
echo [+] Disabling WaaSMedicSvc (Windows Update Medic Service)...
sc config WaaSMedicSvc start= disabled >nul 2>&1
sc stop WaaSMedicSvc >nul 2>&1

:: almost done!!! omggg
:: cleanmgr time, deletes temp files and junk in one go
echo [+] Performing quick storage debloat...
cleanmgr /sagerun:1

:: done!!!
echo [+] Debloat complete. System should remain fully functional.
pause 
exit

:: if u didnt get what this does, check out the readme NOW.