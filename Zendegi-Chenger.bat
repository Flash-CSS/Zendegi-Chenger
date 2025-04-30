@echo off
cls
color b

echo:
echo                DNS Changer by Agha Acid Gol
echo         (Negaran nabash, Hacket nemikonam, khoshtip)
echo:
echo                        GitHub: Flash-CSS
echo                  -----------------------------
echo             ------------------------------------
echo                -------------------------------
echo:

echo 1 - Change DNS
echo 2 - Reset DNS to Automatic (DHCP)
echo 3 - Flush DNS Cache
echo:

set /p "option=Choose an option (1, 2, or 3): "
if "%option%"=="1" (
    goto choose_adapter
) else if "%option%"=="2" (
    goto choose_adapter
) else if "%option%"=="3" (
    goto flush_dns
) else (
    echo Invalid option selected.
    goto end
)

:choose_adapter
echo:
echo 1 - Ethernet
echo 2 - Wi-Fi
set /p "adapter=Enter Network Adapter (1 or 2): "

if "%adapter%"=="1" (
    set "adapter=Ethernet"
) else if "%adapter%"=="2" (
    set "adapter=Wi-Fi"
) else (
    echo Invalid adapter selected.
    goto end
)

if "%option%"=="1" goto change_dns
if "%option%"=="2" goto reset_dns

:change_dns
echo:
echo Choose your DNS provider:
echo 1. Google (8.8.8.8 and 8.8.4.4)
echo 2. Cloudflare (1.1.1.1 and 1.0.0.1)
echo 3. Electro (78.157.42.100 and 78.157.42.101)
echo 4. Shecan (185.51.200.2 and 178.22.122.100)
echo 5. RadarGame (10.202.10.10 and 10.202.10.11)
echo 6. Custom DNS
set /p "dnsChoice=Enter your choice (1-6): "

if "%dnsChoice%"=="1" (
    set dns1=8.8.8.8
    set dns2=8.8.4.4
) else if "%dnsChoice%"=="2" (
    set dns1=1.1.1.1
    set dns2=1.0.0.1
) else if "%dnsChoice%"=="3" (
    set dns1=78.157.42.100
    set dns2=78.157.42.101
) else if "%dnsChoice%"=="4" (
    set dns1=185.51.200.2
    set dns2=178.22.122.100
) else if "%dnsChoice%"=="5" (
    set dns1=10.202.10.10
    set dns2=10.202.10.11
) else if "%dnsChoice%"=="6" (
    set /p "dns1=Enter your preferred DNS: "
    set /p "dns2=Enter your alternate DNS: "
) else (
    echo Invalid DNS choice.
    goto end
)

echo.
echo Setting DNS to %dns1% and %dns2% for %adapter%...
netsh interface ipv4 set dns name="%adapter%" static %dns1% primary
netsh interface ipv4 add dns name="%adapter%" %dns2% index=2
ipconfig /flushdns

echo Restarting your Internet connection...
netsh interface set interface "%adapter%" admin=disable
timeout /t 2 >nul
netsh interface set interface "%adapter%" admin=enable

echo DNS successfully changed!
goto end

:reset_dns
echo:
echo Resetting DNS settings for %adapter% to automatic (DHCP)...
netsh interface ipv4 set dns name="%adapter%" source=dhcp
ipconfig /flushdns

echo Restarting your Internet connection...
netsh interface set interface "%adapter%" admin=disable
timeout /t 2 >nul
netsh interface set interface "%adapter%" admin=enable

echo DNS reset to automatic successfully!
goto end

:flush_dns
echo:
echo Flushing DNS Resolver Cache...
ipconfig /flushdns
echo DNS cache has been flushed successfully!
goto end

:end
echo:
pause
exit
