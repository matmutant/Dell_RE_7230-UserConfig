# Dell_RE_7230-UserConfig
The following is my own Windows11 UserConfig on a Dell Rugged Extreme 7230
> [!CAUTION]
> The following shall be followed carefully as it is nothing but an end-user notepad listing things that worked (or didn't) at some point of time

## Why going rugged?
Why choosing a rugged device instead of the plethora of devices available on the market when you are a "basic end-user"?  
Sustainability begins by choosing long lasting devices instead of disposable ones that can be “recycled” : recycling is NOT the unharmful, it is only one of many way to minimize waste. I’d rather have devices that last (very) long than getting a new one every other year.  
Let’s try to keep that in mind and Reduce, Reuse (and only then, Recycle)  
My requirements that must be matched were the following :   
- Powerful enough so it won’t get behind too quickly (my previous [main] device is 7 years old [2017-2024] Asus UX360 UAK with i7-7500U, 16GB of RAM and 512GB SATA SSD and a dying battery that is now reused by a family member)
- Upgradable and repairable : easy storage upgrade (preferably accessible without full disassembly) and with detailed instructions to change internals if needed
- Tool less battery removal (even better : hot swappable), so multiple batteries can be used during device life and discarded when dead.
- Tablet mode
- Active stylus capability  

Additional features that were welcomed :  
- Customizability : VESA mount can be used as a platform to adapt external devices to the machine, many accessories are available to match multiple usecase.
- Sturdiness, having a device that can withstand falls, dirt and water in real adverse situation should survive neatly a more delicate use.
- Connectivity, with LAN, WLAN, Bluetooth, WWAN, GPS, most needs should be covered
- RGB keyboard (a geek is a geek sorry.)
- Privacy features (both cameras can be hidden)



## Hardware
### Dell Rugged Extreme 7230

![Visual of the tablet by DELL](./src/DE_RE_7230-visual.jpg?raw=true)
(visual from DELL website)

Product page : [Here](https://www.dell.com/fr-fr/shop/ordinateurs-portables-dell/tablette-latitude-7230-rugged-extreme/spd/latitude-12-7230-rugged-laptop/xctol723012emea_vp?redirectTo=SOC)

#### Basic configuration
- [x] CPU: Core [i7-1260U](https://ark.intel.com/content/www/fr/fr/ark/products/226455/intel-core-i7-1260u-processor-12m-cache-up-to-4-70-ghz.html)
- [X] iGP:  Intel® Iris® Xe Graphics
- [x] RAM: 32GB in 2x16GB channels of LPDDR5, 5 200 MT/s (`wmic memorychip list full` : 8x4GB LPDDR5 6400 modules)
- [x] SSD: 1TB M.2 NVMe (PM9B1 NVMe Samsung 1024GB)
- [X] Screen: 12" 1 200 cd/m² WVA FHD (1 920 x 1 200) 100 % sRVB
- [X] Battery (primary) : 2 Cells 35.6Wh
- [x] OS: Windows 11 Pro 22H2

#### Specific options
##### Top expansion bay
- [ ] Blank cover
- [ ] RJ45
- [ ] USB 3.0 type A
- [X] USB 3.0 Fischer
- [ ] Codebar reader
##### Right expansion bay
- [ ] USB 3.0 type A
- [X] HDMI
##### WLAN+BT
- [X] Intel® Wi-Fi 6E AX211, 2x2, 802.11ax, MU-MIMO, Bluetooth® 5.3
- [ ] Qualcomm Wi-Fi WCN6856-DBS, 2x2, 802.11ax, MU-MIMO, Bluetooth® 5.3
##### WWAN
- [X] 4G Qualcomm® Snapdragon™ X20 Global Gigabit LTE (DW5821e), eSIM/SIM
- [ ] 5G Qualcomm® Snapdragon™ X55 Global 5G (DW5930e), eSIM/SIM
##### GPS
- [X] GPS NEO-M9N u-blox
##### Back panel options
- [ ] contact card reader
- [X] NFC card reader
- [X] fingerprint reader
##### Other options
- [X] Battery (additionnal) : 2 Cells 35.6Wh

### Accessories
- [X] Rugged Keyboard
- [X] active pen PN720R
- [ ] Handle (soft)
- [ ] Handle (hard)
- [ ] Sling
- [ ] Magnetic stand

### Dimensions
#### Size
- Tablet (LxHxP) : 293x203x23.9mm
- Tablet + kb : 
#### Weight
- Tablet, w/ 1 battery : 1.34kg
- Tablet, w/ 2 batteries : 1.49kg
- PC (tablet + kb), w/ 1 battery : 2.38kg
- PC w/ 2 batteries : 2.53kg

## Reviews and links
- [Astringo](https://astringo-rugged.com/dell-rugged-extreme-7230-review-is-it-better-than-the-7220/) (most recent review as of May 2024)
- [NotebookCheck](https://www.notebookcheck.net/Dell-Latitude-7230-Rugged-Extreme-tablet-review-One-of-the-best-displays-in-its-category.705311.0.html)
- [PCmag](https://www.pcmag.com/reviews/dell-latitude-7230-rugged-extreme-tablet)
- [RuggedPCreview](https://www.ruggedpcreview.com/3_slates_dell_latitude_7230_rugged_extreme_tablet.html) | [in depth review](https://www.ruggedpcreview.com/3_slates_dell_latitude_7230.html)
- [StorageReview](https://www.storagereview.com/review/dell-latitude-7230-rugged-extreme-tablet-review)
- [TechRadar](https://www.techradar.com/pro/dell-latitude-7230-rugged-extreme-review)

## Installed Software
To get similar informations I had when using Conky on my GNU-Linux laptop, I installed the following:
- [ ] [Rainmeter](https://www.rainmeter.net/) (see Rainmeter config part)
- [ ] [Coretemp](https://www.alcpu.com/CoreTemp/)

Misc software installed:
- [ ] NotePad++ (with plugin installed like Compare and XML Tools)
- [ ] [Process Explorer](https://docs.microsoft.com/en-us/sysinternals/downloads/process-explorer)
- [ ] 7-Zip
- [ ] [Image Resizer](http://www.bricelam.net/ImageResizer/)
- [ ] LibreOffice (x64)
- [ ] Office 365
- [ ] VirtualBox
- [ ] [...]  
- [ ] WSL2 (with ZSH used as main Shell)

## WSL2 & Zsh
> [!NOTE]
> See [dedicated section](./ZSH#readme)

## Making the PN720R Active pen pressure sensitivity work
> [!IMPORTANT]
> not properly working for GIMP as of 2024-04-25  

PN720R active pen works quite well on the 7230 (although depending on the language of the official DELL datasheet it is said the pen is only compatible with 7220, or with both...), but at first I thought that pressure sensitivity wasn't working at all.   
In fact it works for the very few  apps that are "Windows Ink" ready, but not for whose that need WinTab  
See [dedicated section](./PN720R/README.md)

## GPS
### Configuring GPS
Software for monitoring NMEA sentences :  
- Putty
- [VisualGPSView](https://www.visualgps.net/#visualgpsview-content)
  
#### NEO-M9N u-blox
This NMEA interface can be read through the Prolific PL2303GS USB Serial COM Port adapter (COM3) at 38400 Baud rate

#### Qualcomm® Snapdragon™ X20 Global Gigabit LTE (DW5821e)
This NEMA interface can be read directly through DW5821e-eSIM Snapdragon X20 LTE NMEA (C0M6) at 9600 Baud rate

## Power Saving : trying to increase battery life
### Bring back sleep - hibernate mode
#### Hibernate - S4
With Windows11, microsoft added what they called InstantGO, a S0 sleep mode that allows the machine to wake up on notifications, quite like we have on smartphones: problem, x86 architecture is not as power efficient and Windows not as good on that subject. The result is (very) high power consumption when you think your device is sleeping !  

Why would you give up on S1/S2/S3/S4 sleep levels ? S0 sleep can be usefull for short periode of time, but when your device is alone (in a bag, on your desk) for a while, it is better to put it in "real" sleep (= at least S3, or better : S4) 

Thankfully, **although the option is not available in the UI anymore**, you can set auto-hibernate (in addition to manual hibernate on the menu/button press/lid closed.  

A [good article](https://answers.microsoft.com/en-us/windows/forum/all/how-to-set-windows-11-to-hibernate-automatically/84231535-7f8f-49aa-9b26-fa8d25bb6fcc) explains how to do it.

> In Windows 10, you can set the timeout so that after sleeping for a certain duration, the PC automatically hibernates to go to deep power saving.

> Windows 11 seems to be missing the UI feature to set that time out and by default it's set to a very long time

Below is what I did on my own machine :  
First, enabling deep sleep with `powercfg /HIBERNATE ON`  
Output of `powercfg /q`  

```
GUID du paramètre d’alimentation : 9d7815a6-7ee4-497e-8888-515a05f02364  (Mettre en veille prolongée après)
      Alias de GUID : HIBERNATEIDLE
      Valeur minimale possible : 0x00000000
      Valeur maximale possible : 0xffffffff
      Incrément possible des paramètres : 0x00000001
      Unités possibles des paramètres : secondes
    Index actuel du paramètre de courant alternatif : 0x00000000
    Index actuel du paramètre de courant continu : 0x7fffffff
```

Note that this `0x7fffffff` value for auto hibernate on battery is so big it just can't go to deep sleep at all

I simply set it to 10 minutes (the value might change in the future depending on experience) with `powercfg /x  hibernate-timeout-dc 10`

`0x7fffffff` (=2147483647 seconds, ~24,8 days!!!) ==> `0x00000258` (= 600 seconds, 10 minutes)

```
GUID du paramètre d’alimentation : 9d7815a6-7ee4-497e-8888-515a05f02364  (Mettre en veille prolongée après)
      Alias de GUID : HIBERNATEIDLE
      Valeur minimale possible : 0x00000000
      Valeur maximale possible : 0xffffffff
      Incrément possible des paramètres : 0x00000001
      Unités possibles des paramètres : secondes
    Index actuel du paramètre de courant alternatif : 0x00000000
    Index actuel du paramètre de courant continu : 0x00000258
```

Of course, when your device is in S4, then it will take a while to restart fully.

#### Bring back S3 sleep... and kick out that S0 stanby idle mode
> [!IMPORTANT]
> not working at all as of 2024-05-02 : disabling S0 does not enable S3

S0 sleep, aka "modern sleep" is eating battery like dog treats.  

initial result of `powercfg /a`: 

```
Les états de veille suivants sont disponibles sur ce système :
    Veille (Mode faible consommation S0) Connecté au réseau
    Mettre en veille prolongée
    Démarrage rapide

Les états de veille suivants ne sont pas disponibles sur ce système :
    En veille (S1)
        Le microprogramme du système ne prend pas en charge cet état de mise en veille.
        Cet état de veille est désactivé lorsque le mode faible consommation S0 est pris en charge.

    En veille (S2)
        Le microprogramme du système ne prend pas en charge cet état de mise en veille.
        Cet état de veille est désactivé lorsque le mode faible consommation S0 est pris en charge.

    En veille (S3)
        Le microprogramme du système ne prend pas en charge cet état de mise en veille.
        Cet état de veille est désactivé lorsque le mode faible consommation S0 est pris en charge.

    Veille mode hybride
        Le mode Veille (S3) n’est pas disponible.
        L’hyperviseur ne prend pas en charge cet état de veille.
```

Reading many people having the same kind of issue, one solution is often proposed: modifying the registry.

`\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power`
1. Get back access to advanced power profiles (performance, normal, powersaving)  
	`DWORD, name "CsEnabled" value 0`
2. Get back S3 sleep mode
	`DWORD, name "PlatformAoAcOverride" value 0`

```
reg add HKLM\System\CurrentControlSet\Control\Power /v PlatformAoAcOverride /t REG_DWORD /d 0
```

For me **it did NOT bring back S3, just disabled S0**:  

```
Les états de veille suivants sont disponibles sur ce système :
    Mettre en veille prolongée
    Démarrage rapide

Les états de veille suivants ne sont pas disponibles sur ce système :
    En veille (S1)
        Le microprogramme du système ne prend pas en charge cet état de mise en veille.

    En veille (S2)
        Le microprogramme du système ne prend pas en charge cet état de mise en veille.

    En veille (S3)
        Le microprogramme du système ne prend pas en charge cet état de mise en veille.

    Veille (mode faible consommation S0)
        Le microprogramme du système ne prend pas en charge cet état de mise en veille.

    Veille mode hybride
        Le mode Veille (S3) n’est pas disponible.
        L’hyperviseur ne prend pas en charge cet état de veille.
```

As it is worse having a device without sleep mode at all, revert:  
```
reg delete "HKLM\System\CurrentControlSet\Control\Power" /v PlatformAoAcOverride /f
 
```

#### Switch from "Connected" S0 to "Disconnected" S0
To try to limit power consumption of S0 (because I can't seem to get it fully disabled), switching from network enabled sleep to [network disabled sleep](https://www.elevenforum.com/t/enable-or-disable-network-connectivity-in-modern-standby-in-windows-11.3286/) :   

`powercfg /setdcvalueindex scheme_current sub_none F15576E8-98B7-4186-B944-EAFA664402D9 0`  
Or  
`POWERCFG -SETDCVALUEINDEX SCHEME_CURRENT SUB_NONE CONNECTIVITYINSTANDBY 0`  

`powercfg /a`confirms the switch worked :   
```
Les états de veille suivants sont disponibles sur ce système :
    Veille (Mode faible consommation S0) Déconnecté du réseau
    Mettre en veille prolongée
    Démarrage rapide
```  
and   
```  
Veille (mode faible consommation S0) Connecté au réseau
        La stratégie désactive la connectivité en mode veille.
```  

To revert :   
(Enable)​  
`powercfg /setdcvalueindex scheme_current sub_none F15576E8-98B7-4186-B944-EAFA664402D9 1​`  
Or  
`POWERCFG -SETDCVALUEINDEX SCHEME_CURRENT SUB_NONE CONNECTIVITYINSTANDBY 1​`  
  
(Managed by Windows - Default)​  
`powercfg /setdcvalueindex scheme_current sub_none F15576E8-98B7-4186-B944-EAFA664402D9 2​`  
Or​  
`POWERCFG -SETDCVALUEINDEX SCHEME_CURRENT SUB_NONE CONNECTIVITYINSTANDBY 2​`  

#### Keyboard battery usage
When KB is plugged, battery life is a lot worse than without as shown on the below graph (idle, screen brigthness at 21%, KB backlight is off, no USB/Ethernet peripheral plugged in)

![Graph of battery discharge rate with or without keyboard](./BatteryDischargeRate/Graph_Battery_Discharge_Rate_KB.png?raw=true)

This is around 3W difference between with KB (about 6 to 7W) and without (about 3W) **which is a 1:2 ratio !**

2 hypothesis as of 2024-05-29 : 
- The KB does use a lot of power (which is not unlikely, but I wouldn't expect that much with backlight off and no USB/Ethernet plugged in)
- The power plan in Windows is a little different with and without KB leading to increase of power consumption when KB is plugged in _(this needs to be investigated further)_ and this is backed with the following :
   - CPU power is also altered (not shown in graph) between 1.5 to 3W without KB to 2.5 to 4W whith the KB, both idling
## Network/LAN
### Unregistered access to local server
Starting from Windows 11 version 24H2, Microsoft has enhanced security and no longer allows access to shared folders in the LAN without a username and password. This can be quite inconvenient for existing systems that are shared without requiring a password, [a few workarounds have been discussed](https://www.reddit.com/r/unRAID/comments/1hhl28h/windows_11_24h2_and_cannot_login_smb_without/).  
Below is the solution that worked on my 7230 :  
```
Set-SmbClientConfiguration -RequireSecuritySignature $false
Set-SmbClientConfiguration -EnableInsecureGuestLogons $true
```


