# Making the PN720R Active pen pressure sensitivity work
## Initial findings
[not properly working as of 2024-04-25]
PN720R active pen works quite well on the 7230 (although depending on the language of the datasheet it written it is only compatible wth 7220, or with both...), but at first I thought that pressure sensitivity wasn't working at all.
In fact it works in at least 3 apps : native notepad, native screen capture app and in [Kenneth Evans VS-PenInfo](https://github.com/KennethEvans/VS-PenInfo) tool that shows the tablet correctly registering 0000 to 1024 pressure levels.

## Installation of WinTab
As read scattered on the internet (and detailled [here](https://www.reddit.com/r/Surface/comments/3oca9u/how_do_i_use_gimp_on_my_surface_pro_3/)), GIMP need "Wintab" by N-Trig which is not provided anymore.
Wintab can be found from microsoft in the archive section of the Surface Pro [downloads page](https://www.microsoft.com/en-us/download/details.aspx?id=49498) : 
![WintTab archive for personnal use](https://github.com/matmutant/Dell_RE_7230-UserConfig/blob/main/PN720R/Wintab/WintabDownload.png)

Nom: Wintab_x32_1.0.0.20.zip
Taille: 4666614 octets (4557 KiB)
SHA256: 3d3a26127b2956a7a0c05960874e75b5d22aa4045163d9159f8f6b7a60c4f26d

Nom: Wintab_x64_1.0.0.20.zip
Taille: 4747781 octets (4636 KiB)
SHA256: 080130bab17e71e61a9398e529e325d3002337c9ef38d89fa5088eab2da5e953

(alternatively, I made an [archive](https://github.com/matmutant/Dell_RE_7230-UserConfig/blob/main/PN720R/Wintab/Wintab_x64-32_drivers.tar) for my own use)

Apparently, it is also needed to install Visual C++
latest version is available [here](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#latest-microsoft-visual-c-redistributable-version), version I installed is [Visual C++ Redistributable for Visual Studio 2015-2022](https://aka.ms/vs/17/release/vc_redist.x64.exe)

## Display in GIMP after installation
Once WinTab is installed, 3 new devices display in "edit > input devices" : 
![GIMP menu](https://github.com/matmutant/Dell_RE_7230-UserConfig/blob/main/PN720R/Wintab/Gimp_Input_Device.png)

Once Visuall C++ is installed 
