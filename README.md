# killjunk
Kill junk from your pc in one script, also disable useless telemetries

**NOTE**  
This might have *possibly* unwanted changes. These include:

# Disabling Xbox processes
The program disables Xbox telemetries (this wont affect you if you dont use Xbox whilst executing the program).  
This includes Xbox Live Auth Manager, Xbox Game Save, and Xbox Networking services. These are only useful if you are actively using Xbox apps or Game Pass. Otherwise, they just sit in the background and eat resources.

# Disabling Remote registries
Wont really affect you unless you are in a work domain or using a work computer (might sometimes be used by workgroup owner).  
RemoteRegistry allows someone to edit your registry remotely, which is a security risk for home users and completely useless if you’re not in a corporate environment.

# Disabling Windows insiders program
This is a program where you get to experience raw, freshly baked updates. This will be turned off because it eats some resources and is really useless.  
The service (wisvc) runs in the background even if you’re not enrolled, so disabling it saves memory and CPU.

# Disabling Windows Update Medic Service
This is a service that tries to repair Windows Update even if you’ve disabled updates.  
It’s like using wet wipes on internal bleeding — pointless and just wastes resources. Safe to disable if you manage updates manually.

# Disabling Connected Devices Platform
This service (CDPUserSvc) is used for syncing phones, IoT devices, and other “connected” stuff.  
Most people never use this, so it’s just another background process that can be safely disabled.

# Disabling Windows Error Reporting
This service (WerSvc) collects crash data and sends it to Microsoft.  
Windows doesn’t care anyway, nor does Microsoft, so it’s just telemetry that eats cycles.

# Killing OneDrive
OneDrive.exe is the background sync client for Microsoft’s cloud storage.  
If you don’t use OneDrive, it’s just wasting RAM and CPU.

# Killing YourPhone
YourPhone.exe is the phone sync app. It runs in the background waiting for a phone connection.  
Nobody uses this anymore, so it’s safe to kill.

# Killing Microsoft Edge updater
MicrosoftEdgeUpdate.exe runs silently to update Edge.  
It phones home to Microsoft and eats resources. Disabling it won’t break Edge itself, only auto-updates.

# Killing Skype
SkypeApp.exe is the legacy Skype UWP app.  
Almost nobody uses Skype anymore, and it’s been replaced by Teams. Safe to kill.

# Killing Teams
Teams.exe is Microsoft Teams. Unless you’re in a corporate environment, this is just bloatware that autostarts and hogs memory.

# Killing Widgets
WidgetService.exe powers the Windows 11 widgets panel (news, weather, ads).  
Not essential, and disabling it removes background clutter.

# Killing GameBar
GameBar.exe is the Xbox Game Bar overlay.  
It runs in the background waiting for hotkeys. If you don’t record gameplay, this is useless.

# Killing XboxAppServices
XboxAppServices.exe is background Xbox integration.  
Only needed if you actively use Xbox apps or Game Pass.

# Killing Windows Search Indexer
WSearchIndexer.exe constantly scans files to speed up search.  
If you don’t use Windows search heavily, it just eats CPU and disk I/O.

# Removing preinstalled bloatware apps
The script also removes useless UWP apps that Microsoft preinstalls.  
This includes Paint 3D, 3D Viewer, Mixed Reality Portal, Groove Music, Movies & TV, MSN apps (Weather, News, Sports, Money), Solitaire Collection, and promoted junk like Spotify, TikTok, and Candy Crush.  
These apps are consumer-focused, nobody asked for them, and they eat disk space. Removing them does not affect system stability.

# Disabling Tablet Input Service
This is the Touch Keyboard and Handwriting Panel service.  
It’s useless on desktops and laptops without touchscreens, so it can be safely disabled.

# Disabling Remote Assistance
Remote Assistance allows someone to connect and “help” you.  
Nobody uses this, and it’s just another potential attack surface.

# Disabling Windows Consumer Experience
This is the feature that pushes ads, tips, and suggested apps into your Start menu.  
It’s pure bloat and can be safely disabled.

# Disabling Background Apps
This stops UWP apps from running silently in the background.  
They don’t need to be running if you’re not using them, so disabling this saves resources.

# Disabling Wi-Fi Sense
Wi-Fi Sense automatically connects you to random hotspots and shares Wi-Fi info.  
It’s insecure and useless, so it’s disabled.

# Deleting temporary files
This wont affect you too, since temporary files dont affect your system, and may take up a lot of space (rarely).  
The script uses cleanmgr to wipe them all at once.

# Deleting Recycle Bin contents
Wont affect you too unless you wanna recover old files recently deleted.  
This clears up space quickly.

# Delete thumbnails
These are preview thumbnails for your files.  
They probably will reload soon, but you just get it debloated within the cleanmgr module at once.
