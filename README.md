# Dell_RE_7230-UserConfig
The following is my own Windows11 UserConfig on a Dell Rugged Extreme 7230



## Hardware:  
### Dell Rugged Extreme 7230

![Visual of the tablet by DELL](./src/DE_RE_7230-visual.jpg?raw=true)
(visual from DELL website)

Product page : [Here](https://www.dell.com/fr-fr/shop/ordinateurs-portables-dell/tablette-latitude-7230-rugged-extreme/spd/latitude-12-7230-rugged-laptop/xctol723012emea_vp?redirectTo=SOC)

#### Basic configuration
- [x] CPU: Core [i7-1260U](https://ark.intel.com/content/www/fr/fr/ark/products/226455/intel-core-i7-1260u-processor-12m-cache-up-to-4-70-ghz.html)
- [X] iGP:  Intel® Iris® Xe Graphics
- [x] RAM: 2x16GB LPDDR5, 5 200 MT/s (`wmic memorychip list full` : 8x4GB LPDDR5 6400 modules)
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

## reviews and links
- [Astringo](https://astringo-rugged.com/dell-rugged-extreme-7230-review-is-it-better-than-the-7220/) (most recent review to date)
- [NotebookCheck](https://www.notebookcheck.net/Dell-Latitude-7230-Rugged-Extreme-tablet-review-One-of-the-best-displays-in-its-category.705311.0.html)
- [PCmag](https://www.pcmag.com/reviews/dell-latitude-7230-rugged-extreme-tablet)
- [RuggedPCreview](https://www.ruggedpcreview.com/3_slates_dell_latitude_7230_rugged_extreme_tablet.html)
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

## [WSL2 & Zsh](./ZSH#readme)

## Making the PN720R Active pen pressure sensitivity work
[not properly working for GIMP as of 2024-04-25]
PN720R active pen works quite well on the 7230 (although depending on the language of the datasheet it written it is only compatible wth 7220, or with both...), but at first I thought that pressure sensitivity wasn't working at all.  
In fact it works for the very few  apps that are "Windows Ink" ready, but not for whose that need WinTab  
See [dedicated section](./PN720R/README.md)

## Bring back hibernate mode
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

