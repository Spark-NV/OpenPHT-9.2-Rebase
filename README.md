# OpenPHT-Embedded

**This fork is Rebased using [CoreELEC 9.2](https://github.com/CoreELEC/CoreELEC/tree/coreelec-9.2)**
<br>Ill build as many images as I can and add them as releases for people to use. But that may take a lil bit as Im testing things and working threw potential dead pkg links<br>But as of now everything appears to be functioning on the builds ive personally tested. And will update the chart below if people let me know if they work or not.

------------

<details>
<summary>Compiling</summary>
  
Note: This fork has only been tested to build on Ubuntu 18.04.5<br><br>"Short" build commands:
<br>
* `make rpi2`
* `make amlogic`
* `make amlogic-ng`
* `make pc`

Full command to build different image:
* `PROJECT=*** ARCH=*** DISTRO=*** DEVICE=*** make image`
<br>
Ill add new "short" build commands as I compile them as I find them to be easier for the general public to compile the image.
<br>

</details>

------------
------------

<table>
  <tr>
  <td align="center" colspan="12"><strong>SUPPORTED DEVICES/BUILDS</strong></td>
  </tr>
  <tr>
    <td align="center" colspan="2">Amlogic</td>
    <td align="center" colspan="2">Amlogic-ng</td>
    <td align="center" colspan="2">Rockchip</td>
    <td align="center" colspan="2">RPI</td>
    <td align="center" colspan="2">Allwinner</td>
    <td align="center" colspan="2">X86/X64</td>
  </tr>
  <tr>
    <td align="center" ><b>Device</b></td>
    <td align="center" ><b>Working?</b></td>
    <td align="center" ><b>Device</b></td>
    <td align="center" ><b>Working?</b></td>
    <td align="center" ><b>Device</b></td>
    <td align="center" ><b>Working?</b></td>
    <td align="center" ><b>Device</b></td>
    <td align="center" ><b>Working?</b></td>
    <td align="center" ><b>Device</b></td>
    <td align="center" ><b>Working?</b></td>
    <td align="center" ><b>Device</b></td>
    <td align="center" ><b>Working?</b></td>
  </tr>
  <tr><! --- First Row --->
  <td align="center">S905</td>
  <td align="center">:question:</td>
  <td align="center">S905X</td>
  <td align="center">:question:</td>
  <td align="center">MiQi</td>
  <td align="center">:question:</td>
  <td align="center">RPi</td>
  <td align="center">:question:</td>
  <td align="center">A64</td>
  <td align="center">:question:</td>
  <td align="center">All Generic devices</td>
  <td align="center">:question:</td>
  </tr>
  <tr><! --- Second Row --->
  <td align="center">S905X</td>
  <td align="center">:question:</td>
  <td align="center">S905X2</td>
  <td align="center">:question:</td>
  <td align="center">RK3328</td>
  <td align="center">:question:</td>
  <td align="center">RPi2</td>
  <td align="center">:question:</td>
  <td align="center">H3</td>
  <td align="center">:question:</td>
  <td align="center"></td><! --- X86/X64 empty device column --->
  <td align="center"></td><! --- X86/X64 empty working column --->
  </tr>
  <tr><! --- Third Row --->
  <td align="center">S905D</td>
  <td align="center">:question:</td>
  <td align="center">S905X3</td>
  <td align="center">:question:</td>
  <td align="center">RK3399</td>
  <td align="center">:question:</td>
  <td align="center">RPi3/3+</td>
  <td align="center">:question:</td>
  <td align="center">H6</td>
  <td align="center">:question:</td>
  <td align="center"></td><! --- Allwinner empty device column --->
  <td align="center"></td><! --- Allwinner empty working column --->
  </tr>
  <tr>
  <td align="center">S905W</td>
  <td align="center">:white_check_mark:</td>
  <td align="center">S905Y2</td>
  <td align="center">:question:</td>
  <td align="center">TinkerBoard</td>
  <td align="center">:question:</td>
  <td align="center">RPi4</td>
  <td align="center">:question:</td>
  <td align="center"></td><! --- Allwinner empty device column --->
  <td align="center"></td><! --- Allwinner empty working column --->
  <td align="center"></td><! --- X86/X64 empty device column --->
  <td align="center"></td><! --- X86/X64 empty working column --->
  </tr>
  <tr>
  <td align="center">S905H</td>
  <td align="center">:question:</td>
  <td align="center">S905D3</td>
  <td align="center">:question:</td>
  <td align="center"></td><! --- Rockchip empty device column --->
  <td align="center"></td><! --- Rockchip empty Working column --->
  <td align="center"></td><! --- Rpi empty device column --->
  <td align="center"></td><! --- Rpi empty working column --->
  <td align="center"></td><! --- Allwinner empty device column --->
  <td align="center"></td><! --- Allwinner empty working column --->
  <td align="center"></td><! --- X86/X64 empty device column --->
  <td align="center"></td><! --- X86/X64 empty working column --->
  </tr>
  <tr>
  <td align="center">S912</td>
  <td align="center">:question:</td>
  <td align="center">A311D</td>
  <td align="center">:question:</td>
  <td align="center"></td><! --- Rockchip empty device column --->
  <td align="center"></td><! --- Rockchip empty Working column --->
  <td align="center"></td><! --- Rpi empty device column --->
  <td align="center"></td><! --- Rpi empty working column --->
  <td align="center"></td><! --- Allwinner empty device column --->
  <td align="center"></td><! --- Allwinner empty working column --->
  <td align="center"></td><! --- X86/X64 empty device column --->
  <td align="center"></td><! --- X86/X64 empty working column --->
  </tr>
  <tr>
  <td align="center">S812</td>
  <td align="center">:question:</td>
  <td align="center">S922X</td>
  <td align="center">:white_check_mark:</td>
  <td align="center"></td><! --- Rockchip empty device column --->
  <td align="center"></td><! --- Rockchip empty Working column --->
  <td align="center"></td><! --- Rpi empty device column --->
  <td align="center"></td><! --- Rpi empty working column --->
  <td align="center"></td><! --- Allwinner empty device column --->
  <td align="center"></td><! --- Allwinner empty working column --->
  <td align="center"></td><! --- X86/X64 empty device column --->
  <td align="center"></td><! --- X86/X64 empty working column --->
  </tr>
  <tr>
  <td colspan="12">Legend:<br>:white_check_mark: = Confirmed working<br>:question: = Untested<br>:x: = Confirmed not working</td>
  </tr>
</table>

------------
------------


# Changes

* Rebased from CoreELEC 9.2.8 - This *should* bring in support for any device that CoreELEC 9 supports

* My fork no longer keeps the OpenPHT(mediacenter) or Settings portions in seperate repos. This Fork will use the settings and Mediacenter that is in the root directory.

* The OpenPHT(mediacenter) within this repo is the Latest clone of [OpenPHT](https://github.com/brfransen/OpenPHT) - buildfix tree, with a couple changes I had to apply to get it to build.

* The Settings within this repo is the Latest clone of [Settings Service](https://github.com/RasPlex/service.openelec.settings) - 1.9 tree

* FFmpeg has been updated to 4.2.4
* LibCEC has been updated to 6.0.6
* Plex Black Edition skin has been added

* [Use CURL object directly](https://github.com/Risca/OpenPHT/commit/873ac97cb1acd9f34b8c7360f4cf9f31151ea09f) merged
* [Reduce plex background jobs](https://github.com/Risca/OpenPHT/commit/1f1c932cf0b6548e192b7c90ec5d86f0c863fd24) merged


------------
------------
<details>
<summary>OpenPHT Info</summary>
OpenPHT-Embedded is a 'Just enough OS' Linux distribution for running OpenPHT on popular mediacentre hardware.<br><br>SSH login details are user: "root" password: "openpht" or "rasplex" depending on distribution.
</details>

------------

<details>
<summary>LibreELEC Info</summary>
<br>
Source code

https://github.com/LibreELEC/LibreELEC.tv

License
LibreELEC original code is released under GPLv2.
Copyright
As LibreELEC includes code from many upstream projects it includes many copyright owners. LibreELEC makes NO claim of copyright on any upstream code. However all original LibreELEC authored code is copyright LibreELEC.tv. For a complete copyright list please checkout the source code to examine license headers. Unless expressly stated otherwise all code submitted to the LibreELEC project (in any form) is licensed under GPLv2 and copyright is donated to LibreELEC.tv. This approach allows the project to stay manageable in the long term by giving us freedom to maintain the code as part of the whole without the management overhead of preserving contact with every submitter, e.g. GPLv3. You are absolutely free to retain copyright. To retain copyright simply add a copyright header to each submitted code page. If you submit code that is not your own work it is your responsibility to place a header stating the copyright.
</details>

------------

<details>
<summary>CoreELEC Info</summary>
<br>
CoreELEC is a 'Just enough OS' Linux distribution for running the award-winning [Kodi](https://kodi.tv) software on popular low-cost hardware. CoreELEC is a minor fork of [LibreELEC](https://libreelec.tv), it's built by the community for the community. [CoreELEC website](http://coreelec.org).

**Issues & Support**

Please report issues via the CoreELEC [Forum](https://discourse.coreelec.org).

**Donations**

At this moment we do not accept Donations. We are doing this for fun not for profit.

**License**

CoreELEC original code is released under [GPLv2](https://www.gnu.org/licenses/gpl-2.0.html).

**Copyright**

As CoreELEC includes code from many upstream projects it includes many copyright owners. CoreELEC makes NO claim of copyright on any upstream code. Patches to upstream code have the same license as the upstream project, unless specified otherwise. For a complete copyright list please checkout the source code to examine license headers. Unless expressly stated otherwise all code submitted to the CoreELEC project (in any form) is licensed under [GPLv2](https://www.gnu.org/licenses/gpl-2.0.html). You are absolutely free to retain copyright. To retain copyright simply add a copyright header to each submitted code page. If you submit code that is not your own work it is your responsibility to place a header stating the copyright.
</details>
