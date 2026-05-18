@echo off
chcp 65001 >nul 2>&1
CLS
echo.          ███╗   ██╗███████╗████████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗    ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗██╗███╗   ██╗ ██████╗     ██╗   ██╗████████╗██╗██╗     ██╗████████╗██╗   ██╗
echo.          ████╗  ██║██╔════╝╚══██╔══╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝    ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██║████╗  ██║██╔════╝     ██║   ██║╚══██╔══╝██║██║     ██║╚══██╔══╝╚██╗ ██╔╝
echo.          ██╔██╗ ██║█████╗     ██║   ██║ █╗ ██║██║   ██║██████╔╝█████╔╝        ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ██║██╔██╗ ██║██║  ███╗    ██║   ██║   ██║   ██║██║     ██║   ██║    ╚████╔╝ 
echo.          ██║╚██╗██║██╔══╝     ██║   ██║███╗██║██║   ██║██╔══██╗██╔═██╗        ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ██║██║╚██╗██║██║   ██║    ██║   ██║   ██║   ██║██║     ██║   ██║     ╚██╔╝  
echo.          ██║ ╚████║███████╗   ██║   ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗       ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗██║██║ ╚████║╚██████╔╝    ╚██████╔╝   ██║   ██║███████╗██║   ██║      ██║   
echo.          ╚═╝  ╚═══╝╚══════╝   ╚═╝    ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝       ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═════╝    ╚═╝   ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝   
echo.


echo.                                            %w%[%y% %c%%u%1%q% %t%%w%]%y% %c%Network Optimizion%t%       %w%[%y% %c%%u%2%q% %t%%w%]%y% %c%Exit%t% 




echo.                                                          %w%[%y% %c%%u%3%q% %t%%w%]%y% %c%Discord Server%t% 
set choice=
set /p choice=                                              
if '%choice%'=='1' goto Network Optimizion
if '%choice%'=='2' goto Exit
if '%choice%'=='3' goto Discord Server 

:Network Optimizion
cls
color 06   
echo========================================
echo   2026 NETWORK TWEAKING UTILITY
echo======================================== 
echo :: Network Adapter Tweaks
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class{4D36E972-E325-11CE-BFC1-08002BE10318}<Adapter_Instance>" /v PnPCapabilities /t REG_DWORD /d 0x00000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class{4D36E972-E325-11CE-BFC1-08002BE10318}<Adapter_Instance>" /v PacketStackSize /t REG_DWORD /d 0x00000008 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class{4D36E972-E325-11CE-BFC1-08002BE10318}<Adapter_Instance>" /v MaxNumFilters /t REG_DWORD /d 0x00000020 /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v ThreadDpcEnable /t REG_DWORD /f /d 0
powershell -Command "Set-NetOffloadGlobalSetting -Chimney Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -NetworkDirect Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -NetworkDirectAcrossIPSubnets Blocked"
powershell -Command "Set-NetOffloadGlobalSetting -PacketCoalescingFilter Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -ReceiveSideScaling Disabled"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v IRPStackSize /t REG_DWORD /f /d 32
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v TrackNblOwner /t REG_DWORD /f /d 0 
netsh int ip set global taskoffload=disabled
netsh interface tcp set global autotuninglevel=disabled
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *FlowControl /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *InterruptModeration /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *IPChecksumOffloadIPv4 /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *LsoV2IPv4 /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *LsoV2IPv6 /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *ModernStandbyWoLMagicPacket /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *NumRssQueues /t REG_SZ /f /d 2
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *PMARPOffload /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *PMNSOffload /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *SpeedDuplex /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *TCPChecksumOffloadIPv4 /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *TCPChecksumOffloadIPv6 /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *UDPChecksumOffloadIPv4 /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *UDPChecksumOffloadIPv6 /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *WakeOnMagicPacket /t REG_SZ /f /d 1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *WakeOnPattern /t REG_SZ /f /d 1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v AdvancedEEE /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v ASPM /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v AutoDisableGigabit /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v EnableGreenEthernet /t REG_SZ /f /d 0      
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwAutoloadMedia /t REG_SZ /f /d 3
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwBpMask /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwFPSM /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwMode /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwOptimize /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwOption /t REG_DWORD /f /d 800000
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwOptionV2 /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwOptionV3 /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwOptionV4 /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwParaMask /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwPciOtherFunDevMask /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v HwWolCrcVal /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v LDWTime /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v MRRSize /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v PowerSavingMode /t REG_DWORD /f /d 0 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v RtIdleTimeout /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v RxOptimizeThreshold /t REG_DWORD /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v S0MgcPkt /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v S5NicKeepOverrideMacAddr /t REG_SZ /f /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v RssBaseCpu /t REG_DWORD /d 0x00000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v ReceiveWorkerThreadPriority /t REG_DWORD /d 0x00000004 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v DisableNDISWatchDog /t REG_DWORD /d 0x00000001 /f

echo :: DNS Flush
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns


echo :: BCDEDIT Tweaks
bcdedit /set disabledynamictick Yes
bcdedit /set useplatformtick Yes
bcdedit /set tscsyncpolicy Enhanced

echo :: Disable Hibernate
powercfg.exe -h off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /f /d 0


echo :: Enable CTCP

echo :: Disable heuristics
netsh int tcp set heuristics disabled


echo :: Seting the initial Retransmission Timeout to 1000
netsh int tcp set global initialRto=1000

echo :: Enable Direct Cache Access
netsh int tcp set global dca=enabled
pause
chcp 65001 >nul 2>&1
CLS
color 7
echo.          ███╗   ██╗███████╗████████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗    ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗██╗███╗   ██╗ ██████╗     ██╗   ██╗████████╗██╗██╗     ██╗████████╗██╗   ██╗
echo.          ████╗  ██║██╔════╝╚══██╔══╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝    ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██║████╗  ██║██╔════╝     ██║   ██║╚══██╔══╝██║██║     ██║╚══██╔══╝╚██╗ ██╔╝
echo.          ██╔██╗ ██║█████╗     ██║   ██║ █╗ ██║██║   ██║██████╔╝█████╔╝        ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ██║██╔██╗ ██║██║  ███╗    ██║   ██║   ██║   ██║██║     ██║   ██║    ╚████╔╝ 
echo.          ██║╚██╗██║██╔══╝     ██║   ██║███╗██║██║   ██║██╔══██╗██╔═██╗        ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ██║██║╚██╗██║██║   ██║    ██║   ██║   ██║   ██║██║     ██║   ██║     ╚██╔╝  
echo.          ██║ ╚████║███████╗   ██║   ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗       ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗██║██║ ╚████║╚██████╔╝    ╚██████╔╝   ██║   ██║███████╗██║   ██║      ██║   
echo.          ╚═╝  ╚═══╝╚══════╝   ╚═╝    ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝       ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═════╝    ╚═╝   ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝   
echo.


echo.                                            %w%[%y% %c%%u%1%q% %t%%w%]%y% %c%Network Optimizion%t%       %w%[%y% %c%%u%2%q% %t%%w%]%y% %c%Exit%t% 




echo.                                                          %w%[%y% %c%%u%3%q% %t%%w%]%y% %c%Discord Server%t% 
set choice=
set /p choice=                                              
if '%choice%'=='1' goto Network Optimizion
if '%choice%'=='2' goto Exit
if '%choice%'=='3' goto Discord Server                                                                                                                                                                                           