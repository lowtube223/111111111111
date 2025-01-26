@echo off
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe >nul
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe >nul
taskkill /f /im FortniteLauncher.exe >nul
taskkill /f /im FortniteClient-Win64-Shipping.exe >nul
taskkill /f /im EasyAntiCheat.exe >nul
taskkill /f /im BEService.exe >nul
taskkill /f /im BEServices.exe >nul
taskkill /f /im "FortniteLauncher.exe" /t /fi "status eq running">nul
taskkill /f /im "FortniteClient-Win64-Shipping_BE.exe" /t /fi "status eq running">nul
taskkill /f /im "FortniteClient-Win64-Shipping.exe" /t /fi "status eq running">nul
taskkill /f /im "EasyAntiCheat.exe" /t /fi "status eq running">nul
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe > nul
taskkill /f /im FortniteClient-Win64-Shipping.exe > nul
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe > nul
taskkill /f /im FortniteLauncher.exe > nul
taskkill /f /im EasyAntiCheat.exe > nul
taskkill /f /im BEService.exe > nul
taskkill /f /im BEServices.exe > nul
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe
taskkill /f /im FortniteClient-Win64-Shipping.exe
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe
taskkill /f /im FortniteLauncher.exe
taskkill /f /im EasyAntiCheat.exe
Sc stop EasyAntiCheat
Sc stop FortniteClient-Win64-Shipping_EAC
Sc stop FortniteClient-Win64-Shipping_BE

reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC_EOS.exe" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe" /f

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\Program Files (x86)\Epic Games\Epic Online Services\Engine\Content\Slate\MessageLog" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\Program Files (x86)\Epic Games\Epic Online Services\Engine\Content\Slate\Old" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\Program Files (x86)\Epic Games\Epic Online Services\Engine\Programs\CrashReportClient" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\Program Files (x86)\Epic Games\Epic Online Services\Engine\Programs\CrashReportClient\Config" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\Program Files (x86)\Epic Games\Launcher\Engine\Content\Slate\Old" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\Program Files (x86)\Epic Games\Launcher\Engine\Plugins" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\Program Files (x86)\Epic Games\Launcher\Engine\Plugins\Messaging" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\Program Files (x86)\Epic Games\Launcher\Engine\Plugins\Messaging\MessagingDebugger" /f

reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EpicOnlineServices" /v "FailureActions" /f
reg delete HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat /f
reg delete HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat_EOS /f
reg delete HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat /f
reg delete "HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat_EOS" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FortniteClient-Win64-Shipping.exe" /v "LastDetectionTime" /f


REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v "GUID" /t REG_SZ /d "%random%-%random%-%random%-%random%-%random%" /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v "MachineGuid" /t REG_SZ /d "%random%-%random%-%random%-%random%-%random%" /f
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\007ABEF3D1BC494C378FE9E90815B33676DCEB47
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\0BF0DEAA8A19079E0D347735A2F512415B4D9B14
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\2895B436A3CE70D8FCBBA971A99D7782F30E1715
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\2A6A06259337531EA5101E9BD8818AE92450FCE4
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\2FDCB81A51CE8AA26F4BD6E7CDDD3E4152523F6A
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\3431F3D7B4D84C39D06C951A08612305A85C35DC
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\392F08F2C63619C978F2076694222ABC3054CFC4
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\5986EBD68E94FC890557CEA32F6CAEC6CB6F4178
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\961B1FEC1E2362CF4FD638D26E622DE659AC92E9
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\ADC2EE726BCEA3FC8D627A66C8B3CF417FD2DC42
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\B0A009BBE9168ED28F5DECDC24941B2322A8C3D5
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\B8A832221A39D663DCF615E77CD4D8C38BE3397F
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\C6B9936C20CBD1BAC3492CDB1C9DE3942D67C703
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\D35414CB7D187CB3CD779E2C86A7D150063C9457
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\D448A2D69B897D0CA64BC7EAD63C82B135B28C90
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\E14DAB2F57E4763BB4A8F40F08DD57DC07ADE36C
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\E99AFB51C2934AA3D72FE486EEE0EEB4B5F2D9DB
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\EB595625E08C501F5484D4F4FE7EB7A3D7AD7582
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\F005B0C18B5D2B42267BDF297A7FC7C62901554B
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\F127DEB22E390D0C299F3642BDF2B41D6E2A0B9C
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\F5710FD4DE0372D0B1111F2B96C8FBE8E242BABB
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\LMS
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Cloud\fe3791eb1cf148159682a92ee5fa5a83\ClientSettings.Sav "Size=10367 Modified=6/23/2020 4:33:55 PM" (old value="Size=10052 Modified=6/23/2020 4:21:08 PM")
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini "Size=7420 Modified=6/23/2020 4:36:11 PM" (old value="Size=7162 Modified=6/23/2020 4:21:06 PM")
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log "Size=1536940 Modified=6/23/2020 4:36:18 PM" (old value="Size=769994 Modified=6/23/2020 4:22:26 PM")
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\CacheAccess.json "Size=5750 Modified=6/23/2020 4:36:18 PM" (old value="Size=1288 Modified=6/23/2020 4:20:30 PM")
del /f /s /q %systemdrive%/Windows/System32/eac_usermode_18708921228605.dll
del /f /s /q %systemdrive%/Windows/System32/eac_usermode_28043207757885.dll
del /f /s /q %systemdrive%/Windows/System32/eac_usermode_33289406694579.dll
del /f /s /q %systemdrive%/Windows/System32/eac_usermode_50676397309407.dll
del /s /q "%systemdrive%\Users\%Username%\AppData\Local\UnrealEngine" do rmdir "%%p"do rmdir "%%p"
del /f /s /q "%systemdrive%\Users\%Username%\AppData\Local\FortniteGame\*.* 
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files\*.*" 
del /s /q "%systemdrive%\Users\%Username%\AppData\Roaming\EasyAntiCheat" do rmdir "%%p" 
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\*.*" 
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav\*.*" 
del /f /s /q "x:\%homepath%\.QtWebEngineProcess"`
del /f /s /q "x:\%appdata%\EasyAntiCheat"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Performance\WmiApRpl.ini\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\*.*"
del /q /f %systemdrive%\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat
del /q /f %systemdrive%\Users\%username%\AppData\Local\Packages\Settings\settings.dat
del /q /f %systemdrive%\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx
del /q /f %systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\SettingSync\metastore\edb.log
del /q /f %systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\SettingSync\remotemetastore\v1\edb.log
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\287914AA2FF4FF1F161DF4237099A3FE854DC0DA
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\C725BD1AAD3E1EB84C7832F9D8CE810807D4936E
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Demos
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.22-22.11.18.replay
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini	"Size=7455 Modified=6/22/2020 10:12:42 PM"	(old value="Size=7014 Modified=6/22/2020 10:02:16 PM")
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log	"Size=1323031 Modified=6/22/2020 10:12:43 PM"	(old value="Size=741586 Modified=6/22/2020 10:05:14 PM")
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\CacheAccess.json	"Size=1918 Modified=6/22/2020 10:12:33 PM"	(old value="Size=1274 Modified=6/22/2020 10:02:22 PM")
del /s /f /a:h /a:a /d %systemdrive%\Users\%USERNAME%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_5128.log	"Size=1163 Modified=6/22/2020 10:00:46 PM"	(old value="Size=0 Modified=6/22/2020 10:00:46 PM")
del /q /f %systemdrive%\Users\%username%\ntuser.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat
del /q /f %systemdrive%\System Volume Information\tracking.log
del /q /f %systemdrive%\System Volume Information\WPSettings.dat
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\287914AA2FF4FF1F161DF4237099A3FE854DC0DA
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\9B89E4040A985E716A35AB2EB7F67D640F3D4553
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\ADC2EE726BCEA3FC8D627A66C8B3CF417FD2DC42
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\0BF0DEAA8A19079E0D347735A2F512415B4D9B14
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\2895B436A3CE70D8FCBBA971A99D7782F30E1715
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\2A6A06259337531EA5101E9BD8818AE92450FCE4
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\392F08F2C63619C978F2076694222ABC3054CFC4
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\70E406E28A513C13F0E038541FF9948EEF716BE7
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\786E850F9BA488B92BCE9A9EC69CB109B6A3406E
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Fortnite"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.06-13.42.43.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_11048.log"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp\1be650b5-6fd6-4623-b7e7-916b6b87a195"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\REGSHOT-X64-UNICODE.EXE-43C32688.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Data\Staged\a0090ea72bff43b38d07606d1ecb13be.dat"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Data\a0090ea72bff43b38d07606d1ecb13be.dat"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows Defender\Scans\mpcache-8B99D992B992CBE4190C98A7FBC08BD9F8377425.bin"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-19C22A774309859895CF478EE79E3EED"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-53CF5BA8415772474DC91FBEF42F7CD9"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame-backup-2020.06.05-04.07.07.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\discord\blob_storage\a2ea6cad-7c32-4bed-b7d4-d3becf34ff41"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\discord\00f24eac-4f67-4cf1-be82-e58f2ec01b76.tmp"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_6508.log"
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\Portalregions.ini
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Intermediate\Config\CoalescedSourceConfigs\Portalregions.ini
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Intermediate\Config\CoalescedSourceConfigs\VisualStudioSourceCodeAccess.ini
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Intermediate\Config\CoalescedSourceConfigs\XCodeSourceCodeAccess.ini
del /s /q /f /a:h /a:a "%systemdrive%\Program Files (x86)\Common Files\BattlEye
del /s /q /f /a:h /a:a "%systemdrive%\Program Files (x86)\Common Files\BattlEye\BEDaisy.sys
del /s /q /f /a:h /a:a "%systemdrive%\Program Files (x86)\CommonFiles\BattlEye\BEDaisy.sys\
del /s /q /f /a:h /a:a "%systemdrive%\Program Files (x86)\EasyAntiCheat
del /s /q /f /a:h /a:a "%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.sys
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite1\FortniteGame\PersistentDownloadDir\CMS
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite1\FortniteGame\PersistentDownloadDir\EMS
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\Engine\Config\NoRedist\Windows\ShippableWindowsGameUserSettings.ini
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\Engine\Plugins
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\Engine\Plugins\CurveEditorTools\Assetregistry.bin
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\Engine\Plugins\Editor\CryptoKeys\Assetregistry.bin
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\Engine\Plugins\Editor\CurveEditorTools\Assetregistry.bin
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.local
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files:VersionCache
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\SharedFiles:VersionCache
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\XSettings.Sav
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Config
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\blob_storage\b141f05c-60b5-4a70-8565-3bd967e47be0
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39ca108634434c91f1\d7fef8f9-801d-49d9-a684-6babe0ef53ca
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39ca108634434c91f1\d7fef8f9-801d-49d9-a684-6babe0ef53ca\
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39ca108634434c91f1\d7fef8f9-801d-49d9-a684-6babe0ef53ca\index
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39ca108634434c91f1\d7fef8f9-801d-49d9-a684-6babe0ef53ca\index-dir
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39ca108634434c91f1\d7fef8f9-801d-49d9-a684-6babe0ef53ca\index-dir\the-real-index
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\\Config\WindowsClient\GameUserSettings.ini
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\ClientSettings.Sav
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\1e4f55431a9a45a2aee75300b31632b3
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\1e4f55431a9a45a2aee75300b31632b3\ClientSettings.Sav
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav\
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\easyanticheat_wow64_x64.eac
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\easyanticheat_wow64_x64.eac.metadata
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\loader.log
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\gamelauncher.log
del /s /q /f /a:h /a:a "%systemdrive%\Windows\Prefetch\EASYANTICHEAT.EXE-4E9E548C.pf
del /s /q /f /a:h /a:a "%%systemdrive%%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*"
del /s /q /f /a:h /a:a "%%systemdrive%%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*"
del /s /q /f /a:h /a:a "%%systemdrive%%\Users\%%username%%\AppData\Local\FortniteGame\Saved\LMS\*.*"
del /s /q /f /a:h /a:a "%%systemdrive%%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Cloud\*.*"
del /s /q /f /a:h /a:a "%%systemdrive%%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.* "
del /s /q /f /a:h /a:a "%%systemdrive%%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.* "
del /s /q /f /a:h /a:a "%%systemdrive%%\Users\%%username%%\AppData\Local\FortniteGame\Saved\LMS\*.* "
del /s /q /f /a:h /a:a "%%systemdrive%%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Cloud\*.* "
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\a0090ea72bff43b38d07606d1ecb13be\ClientSettings.Sav"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\discord\0d61c6a1-e4e0-4afc-85a7-3cbee77a7026.tmp"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.04-23.17.01.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.04-23.26.55.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Crashes\UE4CC-Windows-53CF5BA8415772474DC91FBEF42F7CD9_0000"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Crashes"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Crashes\UE4CC-Windows-53CF5BA8415772474DC91FBEF42F7CD9_0000\CrashContext.runtime-xml"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Crashes\UE4CC-Windows-53CF5BA8415772474DC91FBEF42F7CD9_0000\UE4Minidump.dmp"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Crashes\UE4CC-Windows-53CF5BA8415772474DC91FBEF42F7CD9_0000\FortniteGame.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-FEB4A59D445695BD40170AA0101F8D67"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame-backup-2020.06.05-04.39.07.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_4484.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_7668.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\discord\cc455bae-aee1-4963-bebe-49d0d15d8433.tmp"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.04-23.48.47.replay"
del %systemdrive%\Windows\System32\wbem\Repository\INDEX.BTR
del %systemdrive%\Windows\System32\wbem\Repository\MAPPING3.MAP
del %systemdrive%\Windows\System32\wbem\Repository\OBJECTS.DATA
del /f /s /q "%appdata%\EasyAntiCheat\*.*"
del /f /s /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\BEDaisy.sys\*.*"
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\.lysEB\Install\$resumeData\*.*"
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*"
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\*.*"
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\DMS\*.*"
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_8060.log\*.*"
del /f /s /q "%systemdrive%\Windows\System32\SMI\Store\Machine\SCHEMA.DAT{1c3790dc-b8ad-11e8-aa21-e41d2d101530}.TxR.0.regtrans-ms\*.*"
del /f /s /q "%systemdrive%\Windows\System32\SMI\Store\Machine\SCHEMA.DAT{1c3790dc-b8ad-11e8-aa21-e41d2d101530}.TxR.1.regtrans-ms\*.*"
del /f /s /q "%systemdrive%\Windows\System32\SMI\Store\Machine\SCHEMA.DAT{1c3790dc-b8ad-11e8-aa21-e41d2d101530}.TxR.2.regtrans-ms\*.*"
del /f /s /q "%systemdrive%\Windows\System32\config\COMPONENTS{1c379064-b8ad-11e8-aa21-e41d2d101530}.TMContainer00000000000000000001.regtrans-ms\*.*"
del /f /s /q "%systemdrive%\Windows\System32\config\COMPONENTS{1c379064-b8ad-11e8-aa21-e41d2d101530}.TMContainer00000000000000000002.regtrans-ms\*.*"
del /f /s /q "%systemdrive%\Windows\System32\wbem\Repository\INDEX.BTR\*.*"
del /f /s /q "%systemdrive%\Windows\System32\wbem\Repository\MAPPING3.MAP\*.*"
del /f /s /q "%systemdrive%\Windows\System32\wbem\Repository\OBJECTS.DATA\*.*"
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\LMS\Manifest.sav"
del /s /f /a:h /a:a /q %USERPROFILE%\appdata\local\FortniteGame\ 
del /s /f /a:h /a:a /q %USERPROFILE%\appdata\roaming\EasyAntiCheat 
del %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.06-23.28.32.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\54e16588720643fb821d9acfaf90cc68\ClientSettings.Sav"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_10936.log"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\eac_usermode_220608325218020.dll"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.local"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\SoftwareDistribution\EventCache.v2\{C717DBEF-81DB-4E6C-94ED-E5B12E9CC753}.bin"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.07-16.44.37.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Repository\MAPPING2.MAP"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\29f3c28dda18408b873737d09b1ff7eb\ClientSettings.Sav"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_10080.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame-backup-2020.06.07-05.45.31.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-83D18C654D6F2A4DE11807AEE1512BD8"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\eac_usermode_381808198426781.dll"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.07-18.51.47.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\b1904793c9714ba68e7abd6ddd4c740c"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\b1904793c9714ba68e7abd6ddd4c740c\ClientSettings.Sav"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Credentials\DFBE70A7E5CC19A398EBF1B96859CE5D"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_6712.log"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\eac_usermode_401424855163510.dll"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\EASYANTICHEAT_SETUP.EXE-487D2C5D.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\gamelauncher.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\loader.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-49F72F61.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\easyanticheat_wow64_x64.eac"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\easyanticheat_wow64_x64.eac.metadata"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\EASYANTICHEAT.EXE-4E9E548C.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\eac_usermode_482097104432748.dll"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-F8D5BC134F71DF83257BEF9B4085E365"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\LocalLow\Intel\ShaderCache\97df6490435bf0a9436805b328593e521bef2709c249ad019ecc79461eb3fd1d"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\LocalLow\Intel\ShaderCache\c599248bab609cabbbe87d3f7e3e50ea514e617406a31121a5fdee918c714604"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\LocalLow\Intel\ShaderCache\ebd5ee9b5aeb33b1736533c0efd2ceff9861038fde9caee3bec8d5c011cf5405"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_8864.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\c7dee411e20a44ab930f841e8d206b1b"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\a22d837b6a2b46349421259c0a5411bf"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\b800b911053c4906a5bd399f46ae0055"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\3460cbe1c57d4a838ace32951a4d7171"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\c52c1f9246eb48ce9dade87be5a66f29"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\7e2a66ce68554814b1bd0aa14351cd71"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\b6c60402a72e4081a6a47c641371c19f"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\discord\352843a1-1c4c-4beb-b69c-e517b2b6ed78.tmp"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Data\Staged\68b8f6c0ed514c9bbe63d2d41064aa5b.dat"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Data\68b8f6c0ed514c9bbe63d2d41064aa5b.dat"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp\45ec6edb-4340-453b-be33-d354eea6c133"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Credentials\DFBE70A7E5CC19A398EBF1B96859CE5D"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\68b8f6c0ed514c9bbe63d2d41064aa5b"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\68b8f6c0ed514c9bbe63d2d41064aa5b\ClientSettings.Sav"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.08-03.48.26.replay"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\regid.1991-06.com.microsoft\regid.1991-06.com.microsoft_Windows-10-Enterprise-Evaluation.swidtag"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\regid.1991-06.com.microsoft"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Intermediate\Config\CoalescedSourceConfigs\PortalRegions.ini"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\PortalRegions.ini"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\Tasks\Microsoft\Windows\PushToInstall\Registration"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Credentials\DFBE70A7E5CC19A398EBF1B96859CE5D"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\BEService.exe"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\BEService_fn.exe"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-E18472FD40444A81200C4689242F0DC2"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame-backup-2020.06.08-21.56.42.log"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Performance\WmiApRpl_new.h"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_5932.log"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Performance\WmiApRpl.h"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Performance"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Performance\WmiApRpl_new.ini"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Performance\WmiApRpl.ini"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Repository\OBJECTS.DATA"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Repository\INDEX.BTR"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Repository\MAPPING3.MAP"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.08-17.12.29.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\SMARTSCREEN.EXE-EACC1250.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\BESERVICE.EXE-991187A8.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-2FF4C5BF.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-62345C79.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITELAUNCHER.EXE-4FF7645C.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-32DC50BD4D6B154607F1D2AB2A40834C"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame-backup-2020.06.11-20.21.57.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*" 
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*" 
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\*.*" 
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\*.*" 
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\*.*" 
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\discord\adebcf34-c2a1-48a1-9b85-c7ce24ebe4a2.tmp"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\discord\5aed592c-8855-4b3a-be68-2824f8d9f18f.tmp"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\CacheAccess.json"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.11-23.22.40.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\BEDaisy.sys"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_3380.log"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Temp\abe4f690-4949-40b0-8f8d-3ad5cf29c11a"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.16-20.22.13.replay"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Intermediate\Config\CoalescedSourceConfigs\PortalRegions.ini*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\CrashReportClient\UE4CC-Windows-72CCB9004D132462217ECE948BC03CBE\CrashReportClient.ini*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\CrashReportClient\UE4CC-Windows-E3661BE544621B07B291448442161091\CrashReportClient.ini*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\PortalRegions.ini*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39cacd108634434c91f1\5dff4910-44e7-4ef8-b06f-a66ce53e0e69\fe0c4ca0c0cbe875_0*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39cacd108634434c91f1\f5fe54ed-e03a-40a0-80f8-d0350a52b7e3\be52f68b51029c9d_0*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\65f6b08d488442e694b1e23d152d971e\ClientSettings.Sav*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-FA58D227408B75B949C1ECA1ABE0D4C7\CrashReportClient.ini*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.08-22.56.55.replay*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\CacheAccess.json*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\2895B436A3CE70D8FCBBA971A99D7782F30E1715*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\2A6A06259337531EA5101E9BD8818AE92450FCE4*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\3FE1F488F87F34DD44870F1C28FEEF2E82324B1E*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\407DEAB1A83565509618D0A762FD07BB4889CA1A*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\611EBF87394DCC5D902B67C542206F029AE225F1*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\6AB39DE3E2B3DFA4C3A8B927A27FE3BC4B60578E*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\7F8F7208B7E299A57B1E6963C221C4A896A7A97B*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\8C5C92275C748E36EF9BAF10D96D94275784622F*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\961B1FEC1E2362CF4FD638D26E622DE659AC92E9*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\AE2C6A4116D64799B1F8763C784FB0E70F7F0BFF*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\C6B9936C20CBD1BAC3492CDB1C9DE3942D67C703*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\D448A2D69B897D0CA64BC7EAD63C82B135B28C90*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\DFD1FBB2DEE6F543B86519B32AA15BE71656A59E*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\EF2FF9F36D089B164C185B6A2F674F7D4AED1C99*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\F005B0C18B5D2B42267BDF297A7FC7C62901554B*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\F127DEB22E390D0C299F3642BDF2B41D6E2A0B9C*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\F523678DF26F4E1038543E480569523090919F57*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\3460cbe1c57d4a838ace32951a4d7171*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\7e2a66ce68554814b1bd0aa14351cd71*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\a22d837b6a2b46349421259c0a5411bf*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\b6c60402a72e4081a6a47c641371c19f*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\b800b911053c4906a5bd399f46ae0055*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\c52c1f9246eb48ce9dade87be5a66f29*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\c7dee411e20a44ab930f841e8d206b1b*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_1608.log*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\BESERVICE.EXE-622E150D.pf*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\DISCORDHOOKHELPER64.EXE-F16A4BE4.pf*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\EASYANTICHEAT_SETUP.EXE-A6C69E49.pf*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-5D7C37E5.pf*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-9E5A8D8B.pf*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITELAUNCHER.EXE-CEAE6228.pf*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\REGSHOT-X64-ANSI.EXE-0BE896DE.pf*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Repository\MAPPING1.MAP*.*
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\*.*
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav\*.*"
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\CrashReportClient\UE4CC-Windows-72CCB9004D132462217ECE948BC03CBE*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\CrashReportClient\UE4CC-Windows-E3661BE544621B07B291448442161091*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\65f6b08d488442e694b1e23d152d971e*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient*.*
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39ca108634434c91f1\b90b1134-2a94-4983-be85-2c213daffc4d
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\e60030e2e5440743857a39ca108634434c91f1\b90b1134-2a94-4983-be85-2c213daffc4d\index-dir
del %systemdrive%\Users%username%\AppData\Local\FortniteGame\Saved\PersistentDownloaddel\CMS\dels\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\0C8034B96B942EC00042C1D6BB25F8E1ADEDC566
del %systemdrive%\Users%username%\AppData\Local\FortniteGame\Saved\PersistentDownloaddel\CMS\dels\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\D448A2D69B897D0CA64BC7EAD63C82B135B28C90
del %systemdrive%\Users%username%\AppData\Local\FortniteGame\Saved\PersistentDownloaddel\CMS\dels\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\EB595625E08C501F5484D4F4FE7EB7A3D7AD7582
del %systemdrive%\Users%username%\AppData\Local\FortniteGame\Saved\Demos
del %systemdrive%\Users%username%\AppData\Local\FortniteGame\Saved\LMS
del %systemdrive%\Users%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav
del %systemdrive%\Windows.old.000\Users\ %username%\Local Settings\FortniteGame\Saved\PersistentDownloaddel\CMS\dels\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\0C8034B96B942EC00042C1D6BB25F8E1ADEDC566
del %systemdrive%\Windows.old.000\Users\ %username%\Local Settings\FortniteGame\Saved\PersistentDownloaddel\CMS\dels\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\D448A2D69B897D0CA64BC7EAD63C82B135B28C90
del %systemdrive%\Windows.old.000\Users%username%\Local Settings\FortniteGame\Saved\PersistentDownloaddel\CMS\dels\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\EB595625E08C501F5484D4F4FE7EB7A3D7AD7582
del %systemdrive%\Windows.old.000\Users\ %username%\Local Settings\FortniteGame\Saved\LMS
del %systemdrive%\Windows.old.000\Users\ %username%\Local Settings\FortniteGame\Saved\LMS\Manifest.sav
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-FA58D227408B75B949C1ECA1ABE0D4C7*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*" 
del /s /f /a:h /a:a /q "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\LMS\*.*" 
del /s /f /a:h /a:a /q "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Cloud\*.*" 
del /f /s /q "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*
del /f /s /q "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\LMS\*.*
del /f /s /q "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Cloud\*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\LMS\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS*.*
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\074C678AA46A0AF05D32501DAB1441B7B9D673FF
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\684A0D6CC148153CFBE450B694D4FC8AB08CD087
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\A8607A75F3A2D8F446A09DACEF9D872202E2B8D6
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\FF89F72241B84E71DCF8515D4E27A5161191323F
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Demos
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Demos\UnsavedReplay-2020.06.22-23.12.13.replay
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\LMS
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini "Size=7416 Modified=6/22/2020 11:14:05 PM" (old value="Size=7162 Modified=6/22/2020 11:05:23 PM")
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log "Size=1284629 Modified=6/22/2020 11:14:05 PM" (old value="Size=770108 Modified=6/22/2020 11:07:02 PM")
del /s /f /a:h /a:a /q %systemdrive%\Users\%USERNAME%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\CacheAccess.json "Size=2142 Modified=6/22/2020 11:13:46 PM" (old value="Size=1292 Modified=6/22/2020 11:04:14 PM")
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\961B1FEC1E2362CF4FD638D26E622DE659AC92E9
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\C6B9936C20CBD1BAC3492CDB1C9DE3942D67C703
del /s /q "%systemdrive%\Users\%Username%\AppData\Local\BattlEye" do rmdir "%%p"
del /s /q  "%systemdrive%\Users\%Username%\AppData\Local\BattlEye" do rmdir "%%p" 
del /s /q "%systemdrive%\Users\%Username%\AppData\Local\EpicGamesLauncher" do rmdir "%%p" 
del /s /q "%systemdrive%\Users\%Username%\AppData\Local\UnrealEngineLauncher" do rmdir "%%p" 
del /s /q "%systemdrive%\Users\%Username%\AppData\Local\UnrealEngine" do rmdir "%%p" 
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\E14DAB2F57E4763BB4A8F40F08DD57DC07ADE36C
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\F005B0C18B5D2B42267BDF297A7FC7C62901554B
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\F127DEB22E390D0C299F3642BDF2B41D6E2A0B9C
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav
del "%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exedel "
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files:VersionCache"
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\.egstore\3791CB8D4A44788DBBEAF784C2BA5A25.mancpn
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\.egstore\3791CB8D4A44788DBBEAF784C2BA5A25.manifest
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\chrome_elf.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\d3dcompiler_43.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\d3dcompiler_47.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\libcef.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\libEGL.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\libGLESv2.dll
del "%systemdrive%\Windows\prefetch\reg.EXE-0AC99A87.pf",
del "%systemdrive%\Windows\prefetch\reg.EXE-0AC99A87.pf", 
del "%systemdrive%\Windows\System32\wbem\repository\MAPPING1.MAP",
del "%systemdrive%\Windows\System32\wbem\repository\WRITABLE.TST",
del "%systemdrive%\Windows\prefetch\reg.EXE-0AC99A87.pf",  
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav*.*
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini*.*
del %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\CacheAccess.json*.*
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log*.*
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\natives_blob.bin
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\CEF3\Win64\snapshot_blob.bin
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\DbgHelp\dbghelp.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\libsndfile\Win64\libsndfile-1.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\NVIDIA\NVaftermath\Win64\GFSDK_Aftermath_Lib.x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\Ogg\Win64\VS2015\libogg_64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\PhysX3\Win64\VS2015\ApexFramework_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\PhysX3\Win64\VS2015\APEX_Clothing_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\PhysX3\Win64\VS2015\APEX_Legacy_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\PhysX3\Win64\VS2015\PhysX3Common_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\PhysX3\Win64\VS2015\PhysX3Cooking_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\PhysX3\Win64\VS2015\PhysX3_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\PhysX3\Win64\VS2015\PxFoundation_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\PhysX3\Win64\VS2015\PxPvdSDK_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\Vorbis\Win64\VS2015\libvorbisfile_64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\Vorbis\Win64\VS2015\libvorbis_64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\Windows\DirectX\x64\WinPixEventRuntime.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\ThirdParty\Windows\XAudio2_9\x64\xaudio2_9redist.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-console-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-console-l1-2-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-datetime-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-debug-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-errorhandling-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-file-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-file-l1-2-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-file-l2-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-handle-l1-1-0.dll
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\BEDaisy.sys\*.*
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\*.*
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Performance\WmiApRpl.ini\*.*
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\*.*
del /f /s /q "del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\*.*"
del /s /q /f /a:h /a:a "%%systemdrive%%\Users\%%username%%\AppData\Roaming\EasyAntiCheat\*.* "
del /s /q /f /a:h /a:a "%%systemdrive%%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.sys\*.* "
del /s /q /f /a:h /a:a "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*" "
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*" "
del /s /q /f /a:h /a:a "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\LMS\*.*" "
del /s /q /f /a:h /a:a "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Cloud\*.*" "
del /s /q /f /a:h /a:a "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*"
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*"
del /s /q /f /a:h /a:a "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\LMS\*.*"
del /s /q /f /a:h /a:a "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\Saved\Cloud\*.*"
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files\*.*"
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-heap-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-interlocked-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-libraryloader-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-localization-l1-2-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-memory-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-namedpipe-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-processenvironment-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-processthreads-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-processthreads-l1-1-1.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-profile-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-rtlsupport-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-string-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-synch-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-synch-l1-2-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-sysinfo-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-timezone-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-core-util-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-conio-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-convert-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-environment-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-filesystem-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-heap-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-locale-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-math-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-multibyte-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-private-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-process-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-runtime-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-stdio-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-string-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-time-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\api-ms-win-crt-utility-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\concrt140.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\CrashReportClient.exe
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\msvcp140.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\msvcp140_1.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\msvcp140_2.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\msvcp140_codecvt_ids.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\ucrtbase.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\UnrealCEFSubProcess.exe
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\vccorlib140.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\vcruntime140.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\vcruntime140_1.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\X3DAudio1_7.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\XAPOFX1_5.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\XAudio2_7.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\Engine\Binaries\Win64\xinput1_3.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\ThirdParty\Discord\Win64\discord-rpc.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\ThirdParty\Nvidia\Win64\GfeSDK.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\ThirdParty\SpeechGraphics\Win64\SG_Com.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-console-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-console-l1-2-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-datetime-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-debug-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-errorhandling-l1-1-0.dll
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-A840A14D.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITELAUNCHER.EXE-CEAE6228.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-5D7C37E5.pf"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%%username%%\AppData\Roaming\EasyAntiCheat\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%%username%%\AppData\Local\FortniteGame\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.sys\*.*"
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\CacheAccess.json
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\09_SubgameSelect_Default_StW-512x1024-e47f51e25cbe9943678b9221056a808e81da40e3.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\11BR_BattleLabs_PlaylistTile-(2)-1024x512-ca5f4e84a2941264f787239caa5458d0eabd39e3.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\11BR_In-Game_Launch_Week1_SubgameSelect-512x1024-8b298ddfb13ca218af3f10017e4e989888212e9e.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\11BR_Launch_ModeTiles_Duos-1024x512-b73da22f5ef25695bd78814e0c708253a2cfd66b.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\11BR_Launch_ModeTiles_Solo-1024x512-867508f824d65b998c1e11180306eeb720b1aa11.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\11BR_Launch_ModeTiles_Squad-1024x512-4bca2b25311bd5b8c6bd4a4aa32b2bfa2fadbf78.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\11BR_LTM_Siphon_PlaylistTile-1024x512-712b3caea93ea8df09d1592c88d55913ad296526.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\11BR_LunarNewYear_GanPickaxe_MOTD_1920x1080-1920x1080-7c458359ec91e63c981ae8bae9498a590446c32b.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\BR06_ModeTile_TDM-1024x512-878ba9f92deb153ec85f2bcbce925e185344290e.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\C2CM_Launch_In-Game_Subgame_PropHunt-512x1024-c84b714dc3c2f4ec9dc966074c0c53deef2dc9.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\CM_LobbyTileArt-1024x512-fb48db36552ccb1ab4021b722ea29d515377cc.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Fbattleroyalenews%2F1140+HF%2F8ball_MOTD_1024x512-1024x512-b8690a2ee91e5ccfc2c9ab23561be0dda6ee55.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Duos-1024x512-a431d8587eb87ad5630eada21b60bca9874d116a.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0D9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Solo_ModeTile-1024x512-6cee09d7bcf82ce3f32ca7c77ca04948121ce617.jpg
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\DMS
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\EMS
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\EMS\7e2a66ce68554814b1bd0aa1435171
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\EMS\3460cbe1c57d4a838ace32951a4d7171
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\EMS\a22d837b6a2b46349421259c0a5411bf
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\EMS\ac0ac825f74a809ba2927ece3c3014
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\EMS\b6c60402a72e4081a6a47c641371c19f
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\EMS\b800b911053c4906a5bd399f46ae0055
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\EMS\c52c1f9246eb48ce9dade87be5a66f29
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\LMS\Manifest.sav
del /s /q /f /a:h /a:a "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Plugins
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\d945f059b8b54aa58202ed2989bebfc8
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-AED3596C4ADFAC4DB9E422A6546810D3
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS
del /s /q /f /a:h /a:a "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs
del /q /f %systemdrive%\ProgramData\ntuser.pol
del %systemdrive%\Program Files (x86)\Common Files\BattlEye\BEService.exe /f /s /q
del %systemdrive%\Program Files (x86)\Common Files\BattlEye\BEService_fn.exe /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\AMD\CN\GameReport\FortniteClient-Win64-Shipping.exe\gpa.bin /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FortniteClient-Win64-Shipping_12856.log /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\e4988bfc0f4c4c6596237473da200329\ClientSettings.Sav /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\ClientSettings.Sav /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UECC-Windows-F4478CA54827E7195F8F7BBAB4BC51F8\CrashReportClient.ini /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteLauncher.log /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\BackgroundHttp\URLMap\TempFileURLMappings.urlmap /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\DownloadCache.json /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\08B44835D9E8B3BEDFB49C3650F634FF11B74454.jpeg /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\1773DBBF630BAD44B34734176DD5D03F2E6F4D78.png /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\86F7F05520A581636CEBF3AD1BD5C4383AE77494.png /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\88271B0993D67835C1C89BF7D1B9A1E5ED989F06.jpg /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\B666DE51F8E930A8A99CB03C4454727680759203.jpg /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\B6D962B44AD39D2129B4A96DB8C24DFF6A98D213.jpeg /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\D04ECBD1A835D9714A6F6D279077C15B2FCEDBEF.jpeg /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\EA7CDAA7AF5B1335517D581803C34BB2394218D1.png /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2\ED43DE88DA78F8F4D6645415A7FC446EAE3BD5B8.jpeg /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\0bef34491af34fc584b687e433656e90 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\0ef043433c754e0588525283cacda0ab /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\1492c7f2588940848a4920cdff4e69d7 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\20334c6a270641c0835bed15d9cde4ea /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\3460cbe1c57d4a838ace32951a4d7171 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\6dea1559a81c4b18864782deeba57a83 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\7e2a66ce68554814b1bd0aa14351cd71 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\8b616e78d2674a3e92157d40df1d4cda /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\a22d837b6a2b46349421259c0a5411bf /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\b4b8bebcb5e84d86b11ebb7bb989d88f /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\b6c60402a72e4081a6a47c641371c19f /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\b800b911053c4906a5bd399f46ae0055 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\be84cc30e34142d293ed27d15522b62c /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\c52c1f9246eb48ce9dade87be5a66f29 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\c7dee411e20a44ab930f841e8d206b1b /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS\f2f660d7855c45fdbb7922edda562a60 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\ManifestArchive.journal /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Startup\BuildIdentity.txt /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\ManifestCache\VkeX0y1esOdbd-ggEkmjBETCpYALDw\Full.ini /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\ManifestCache\VkeX0y1esOdbd-ggEkmjBETCpYALDw.manifest /f /s /q
del %systemdrive%\Windows\Prefetch\BESERVICE.EXE-622E150D.pf /f /s /q
del %systemdrive%\Windows\Prefetch\EASYANTICHEAT_SETUP.EXE-CF3441CE.pf /f /s /q
del %systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-42C11B98.pf /f /s /q
del %systemdrive%\Windows\Prefetch\FORTNITECLIENT-WIN64-SHIPPING-5EAA410A.pf /f /s /q
del %systemdrive%\Windows\Prefetch\FORTNITELAUNCHER.EXE-AF00A2B5.pf /f /s /q
del %systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe /f /s /q
del %systemdrive%\Program Files (x86)\Common Files\BattlEye /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\AMD\CN\GameReport\FortniteClient-Win64-Shipping.exe /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\e4988bfc0f4c4c6596237473da200329 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UECC-Windows-F4478CA54827E7195F8F7BBAB4BC51F8 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS /f /s /q
del /f /a:h /a:a /s /q "%systemdrive%\Users\%USERPROFILE%\AppData\Local\FortniteGame\*.*" 
del /f /a:h /a:a /s /q "%systemdrive%\Users\%USERPROFILE%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav\*.*" 
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.* 
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.* 
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\*.* 
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\BackgroundHttp /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\BackgroundHttp\URLMap /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\CMS\Files\C28FF1DE0C661DAF01E118A30B3F21B897A7A6E2 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\EMS /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\CosmeticBundleSeparateCosmetics /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\FortniteBR /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\FortniteBROptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\FortniteCreative /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\FortniteCreativeOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\FrontEnd /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\FrontEndOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\KairosCapture /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\KairosCaptureOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.all /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.allOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.de /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.deOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.es-419 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.es-419Optional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.es-ES /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.es-ESOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.fr /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.frOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.it /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.itOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.pl /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.plOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.ru /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.ruOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.zh-CN /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Lang.zh-CNOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\Startup /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\InstalledBundles\StartupOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\ManifestCache /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\ManifestCache\VkeX0y1esOdbd-ggEkmjBETCpYALDw /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\CosmeticBundleSeparateCosmetics /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\FortniteBR /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\FortniteBROptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\FortniteCreative /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\FortniteCreativeOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\FrontEnd /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\FrontEndOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\KairosCapture /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\KairosCaptureOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.all /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.allOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.de /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.deOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.es-419 /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.es-419Optional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.es-ES /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.es-ESOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.fr /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.frOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.it /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.itOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.pl /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.plOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.ru /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.ruOptional /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.zh-CN /f /s /q
del %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles\Lang.zh-CNOptional /f /s /q
del /q /f %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav
del /q /f %systemdrive%\Users\Public\Libraries\collection.dat
del /q /f %systemdrive%\Users\%username%\AppData\Local\Microsoft\Feeds:KnownSources
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-file-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-file-l1-2-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-file-l2-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-handle-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-heap-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-interlocked-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-libraryloader-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-localization-l1-2-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-memory-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-namedpipe-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-processenvironment-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-processthreads-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-processthreads-l1-1-1.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-profile-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-rtlsupport-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-string-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-synch-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-synch-l1-2-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-sysinfo-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-timezone-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-core-util-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-conio-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-convert-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-environment-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-filesystem-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-heap-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-locale-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-math-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-multibyte-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-private-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-process-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-runtime-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-stdio-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-string-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-time-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\api-ms-win-crt-utility-l1-1-0.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\BattlEye\BELauncher.ini
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\BattlEye\EULA.txt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\BattlEye\Privacy\en-US.txt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\concrt140.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\dbghelp.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Certificates\game.bin
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Certificates\game.cer
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher\Settings.json
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher\SplashScreen.png
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Licenses\Apache-2.0.txt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Licenses\CCO-1.0.txt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Licenses\Licenses.txt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Licenses\MIT.txt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\ar_sa.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\cs_cz.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\de_de.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\en_us.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\es_ar.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\es_es.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\fr_fr.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\it_it.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\ja_ja.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\ko_kr.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\nl_nl.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\pl_pl.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\pt_br.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\ru_ru.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\th_th.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\tr_tr.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\zh_cn.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization\zh_tw.cfg
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Legal\FortniteThirdPartySoftware.txt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.de_DE.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.en_EN.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.es_ES.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.es_MX.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.fr_FR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.it_IT.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.ja_JP.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.ko_KR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.pl_PL.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.pt_BR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.ru_RU.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.tr_TR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.zh_CN.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\FORT_TheAdventureContinues_SRT.zh_TW.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_China_Safe_Cinematic_SRT.zh_CN.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_China_Safe_Cinematic_SRT.zh_TW.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.ar_AR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.de_DE.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.en_US.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.en_US_v2.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.es_ES.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.es_MX.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.fr_FR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.it_IT.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.ja_JP.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.ko_KR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.pl-PL.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.pl_PL.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.pt_BR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.ru_RU.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.tr_TR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.zh_CN.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\SRTSource\FSTW_Cinematic_SRT.zh_TW.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\Video\191008_FSTW_Console_EN_h264.mp4
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Campaign\STW_Campaign\Video\191008_FSTW_Console_EN_h264_ChinaSafe.mp4
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.en_EN.it_IT.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.en_EN.ptBR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.en_EN.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.en_EN_DE.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.en_EN_JA.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.en_EN_pl-PL.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.esES.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.esMX.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.ru_RU.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.tr.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.zh_CN.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT.zh_TW.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT._kor.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Movies\Events\FORT_Winter2018_Cine_SRT_FR.srt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\PackagedReplays\placeholder.txt
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Content\Splash\Splash.bmp
del /s /q /f /a:h /a:a %systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe
del /s /q /f /a:h /a:a %systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.sys
del /s /q /f /a:h /a:a %systemdrive%\Program Files (x86)\hide.me VPN\Resources\Fonts\FontAwesome\fa-regular-400.ttf
del /s /q /f /a:h /a:a %systemdrive%\Program Files (x86)\hide.me VPN\wireguard.x64.exe
del /s /q /f /a:h /a:a %systemdrive%\Program Files (x86)\hide.me VPN\wireguard.x86.exe
del /s /q /f /a:h /a:a %systemdrive%\ProgramData\Epic\EpicGamesLauncher\Data\Manifests\3791CB8D4A44788DBBEAF784C2BA5A25.item
del /s /q /f /a:h /a:a %systemdrive%\ProgramData\Intel\ShaderCache\FortniteClient-Win64-Shipping_0
del /s /q /f /a:h /a:a %systemdrive%\ProgramData\Intel\ShaderCache\FortniteClient-Win64-Shipping_1
del /s /q /f /a:h /a:a %systemdrive%\Users\All Users\Epic\EpicGamesLauncher\Data\Manifests\3791CB8D4A44788DBBEAF784C2BA5A25.item
del /s /q /f /a:h /a:a %systemdrive%\Users\All Users\Intel\ShaderCache\FortniteClient-Win64-Shipping_0
del /s /q /f /a:h /a:a %systemdrive%\Users\All Users\Intel\ShaderCache\FortniteClient-Win64-Shipping_1
del /s /q /f /a:h /a:a %systemdrive%\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\js\0c53bea1c35d3a00_0
del /s /q /f /a:h /a:a %systemdrive%\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\js\3402ad79a7be0ede_0
del /s /q /f /a:h /a:a %systemdrive%\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\js\f7591045d46303be_0
del /s /q /f /a:h /a:a %systemdrive%\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\js\fa8d925e09a3beb3_0
del /s /q /f /a:h /a:a %systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e\DiscordHook.dll
del /s /q /f /a:h /a:a %systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e\DiscordHook64.dll
del /s /q /f /a:h /a:a %systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e\DiscordHookHelper.exe
del /s /q /f /a:h /a:a %systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e\DiscordHookHelper64.exe
del /s /q /f /a:h /a:a %systemdrive%\Windows\appcompat\Programs\Install\INSTALL_0003_c0085398-6951-4d7f-8777-0751bee11844.txt
del /s /q /f /a:h /a:a %systemdrive%\Windows\Prefetch\REG.EXE-6A8B6960.pf
del /s /q /f /a:h /a:a %systemdrive%\Windows\System32\DriverStore\FileRepository\b57nd60a.inf_amd64_77a731ab08be20a5\b57nd60a.PNF
del /s /q /f /a:h /a:a %systemdrive%\Windows\System32\DriverStore\FileRepository\netl160a.inf_amd64_e4cbe375963a69e9\netl160a.PNF
del /s /q /f /a:h /a:a %systemdrive%\Windows\System32\DriverStore\FileRepository\netnvm64.inf_amd64_35bbbe80dec15683\netnvm64.PNF
del /s /f /a:h /a:a /q %systemdrive%\Windows\Prefetch\OAWRAPPER.EXE-581BE30C.pf
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\gamelauncher
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\Temp\be142eaf-1e99-804f-c7ef-92dcb366ef73
del /s /f /a:h /a:a /q %systemdrive%\ProgramFiles(x86)\EasyAntiCheat\EasyAntiCheat.sys
del /s /f /a:h /a:a /q %systemdrive%\Windows\Prefetch\FORTNITELAUNCHER.EXE-DA7E404A.pf
del /s /f /a:h /a:a /q %systemdrive%\Windows\Prefetch\EASYANTICHEAT.EXE-ACEC6391.pf
del /s /f /a:h /a:a /q %systemdrive%\Windows\System32\eac_usermode_8038038031877.dll
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\UE4CC-Windows-3D5D840B481A6C752E898EAF0536E162\CrashReportClient.ini
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\-backup-2020.08.30-08.48.46
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs
del /s /f /a:h /a:a /q  "x:\%homepath%\.QtWebEngineProcess"
del /f /s /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat"
del "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\siphon-1024x512-4cc0ff3407053325e353c4aea55fb30316e6ecf6.jpg",
del "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Squad_ModeTile-1024x512-c543a187ce733be5ee9f6d17bfb74fb1f2e15f4a.jpg",
del "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Solo_ModeTile-1024x512-6cee09d7bcf82ce3f32ca7c77ca04948121ce617.jpg",
del "%systemdrive%\Windows\prefetch\DISCORD.EXE-6BEBC47C.pf",
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\easyanticheat_wow64_x64.eac
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\easyanticheat_wow64_x64.eac.metadata
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\217\loader
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.ShellExperienceHost_cw5n1h2txyewy\TempState\ScreenClip\{BA0D89AC-07DA-4F38-B1BE-1FE735E3A6B2}.png
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.ShellExperienceHost_cw5n1h2txyewy\TempState\ScreenClip\{FB85DC53-12BE-4812-B0EB-28A1A0EC4F47}.json
del /s /f /a:h /a:a /q %systemdrive%\Users\%username%\AppData\Local\\Saved\PersistentDownloadDir\CMS\CacheAccess.json
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e\DiscordHook.dll"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e\DiscordHook64.dll"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e\DiscordHookHelper.exe"
del /s /f /a:h /a:a /q "%systemdrive%\Users\%USERNAME%\AppData\Roaming\discord\0.0.306\modules\discord_hook\e3bbef833e\DiscordHookHelper64.exe"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye"
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\BattlEye\BEClient_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\BattlEye\BEService_x64.exe
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\BattlEye\Install_BattlEye.bat
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\BattlEye\Uninstall_BattlEye.bat
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_x64.dll
del /s /q /f /a:h /a:a %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_x86.dll
del /q /f %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\FortniteGame.log
del /q /f %systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files:VersionCache
del /q /f %systemdrive%\Recovery\ntuser.sys
del /q /f %systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\Compat.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\EditorPerProjectUserSettings.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\Game.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\GameUserSettings.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\Hardware.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\Input.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\Windows\Lightmass.ini
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs
del /q /f %systemdrive%\Users\Default\AppData\Local\Microsoft\Windows\INetCookies
del /q /f %systemdrive%\Windows\INF\keyboard.pnf
del /q /f %systemdrive%\Windows\INF\netrasa.pnf
del /q /f %systemdrive%\Windows\INF\netavpna.pnf
del /q /f %systemdrive%\Program Files (x86)\Epic Games\Launcher\Engine\Config\BaseGame.ini
del /q /f %systemdrive%\Program Files (x86)\Epic Games\Launcher\Engine\Config\Windows\WindowsGame.ini
del /q /f %systemdrive%\Program Files (x86)\Epic Games\Launcher\Engine\Config\BaseInput.ini
del /q /f %systemdrive%\Program Files (x86)\Epic Games\Launcher\Engine\Config\BaseHardware.ini
del /q /f %systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\gamelauncher.log
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Cookies
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Session Storage\LOG.old
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs\cef3.log
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs\EpicGamesLauncher.log
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Cache\data_0
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Cache\data_1
del /s /f /a:h /a:a /q "%appdata%\Roaming\EasyAntiCheat\*.*"
del /f /s /q "%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.sys"
del /f /s /q "%systemdrive%\Windows\System32\eac_usermode_*.dll"
del /f /s /q "%appdata%\Roaming\EasyAntiCheat\*.*"
del /f /s /q "%systemdrive%\Program Files (x86)\EasyAntiCheat\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.sys"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\eac_usermode_*.dll"
del /s /q "%systemdrive%\Users\%Username%\AppData\Local\VirtualStore" do rmdir "%%p"
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Cache\data_2
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Cache\data_3
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Code Cache\js\e7a03ae0f25a578a_0
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Code Cache\js\index-dir\the-real-index
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\IndexedDB\https_launcher.store.epicgames.com_0.indexeddb.leveldb\LOG
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\IndexedDB\https_launcher.store.epicgames.com_0.indexeddb.leveldb\LOG.old
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\IndexedDB\https_launcher.store.epicgames.com_0.indexeddb.leveldb\MANIFEST-000001
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Local Storage\leveldb\000003.log
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Local Storage\leveldb\LOG
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\LOG
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Network Persistent State
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\QuotaManager
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\QuotaManager-journal
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Service Worker\Database\000003.log
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Service Worker\Database\LOG
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Session Storage\000003.log
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\Session Storage\LOG
del /q /f %systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430\TransportSecurity
del /q /f %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir\StagingBundles
del /q /f %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient
del /q /f %systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\
del /q /f "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Config\CrashReportClient\*"
del /q /f "%systemdrive%\Users\%username%\AppData\Local\UnrealEngine\*"
del /q /f "%systemdrive%\Users\%username%\AppData\Local\UnrealEngineLauncher\*"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.sys\*.*
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\regid.1991-06.com.microsoft\*.*


RD /s /q "%systemdrive%\Users\%Username%\AppData\Local\BattlEye"
RD /s /q "%systemdrive%\Users\%Username%\AppData\Local\FortniteGame"
RD /S /Q "%%localappdata%%\FortniteGame"
rd /S /Q "%localappdata%\FortniteGame" 
rd /S /Q "%localappdata%\FortniteGame\Saved\LMS\Manifest.sav" 
rd /s /q "%systemdrive%\Users\%Username%\AppData\Local\BattlEye" 
rd /s /q "%systemdrive%\Users\%Username%\AppData\Roaming\EasyAntiCheat" 
rd /s /f /a:h /a:a /q %USERPROFILE%\appdata\local\FortniteGame 
rd /s /q "%systemdrive%\Users\%Username%\AppData\Local\FortniteGame" 
rd /s /q "%systemdrive%\Users\%Username%\AppData\Roaming\EasyAntiCheat"
rd /S /Q "%localappdata%\FortniteGame"
