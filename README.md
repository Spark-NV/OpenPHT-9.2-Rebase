# OpenPHT-Embedded

This fork has only been tested to build on Ubuntu 18.04.5

As I test and make sure everything works, ill build as many images as I can and add them as releases for people to use.
But as of now everything appears to be functioning and what has quirks there is work arounds.

------------

<details>
<summary>Amlogic Supported Devices (Theoretically)</summary>
<br>
------
S905
S905X
S905D
S905W
S905H
S912
S812
------
<br/><br/>
All forms of each of those chipsets are most likely supported as long as a DTB is available.
<br/><br/>
</details>

<details>
<summary>Amlogic-ng Supported Devices (Theoretically)</summary>
<br>
------
S905X
S905X2
S905X3
S905Y2
S905D3
A311D
S922X
------
<br/><br/>
And as far as I can see "ng" might also support all the devices the non-ng builds support minus S812
<br/><br/>
</details>

<details>
<summary>Unknown Supported Devices</summary>
<br>
These are listed in the projects directory, but are not listed on the CoreELEC site, so no idea if they actually work as I cant test.
<br/><br/>

Allwinner: A64  H3  H6
  
Raspberry Pi: RPi  RPi2  RPi3/3+  RPi4
  
Rockchip: MiQi  RK3328  RK3399  TinkerBoard
  
All Generic X86/X64 Devices/PC's

</details>

------------

**Build**

Short commands to build preset images:

* `make rpi2`
* `make amlogic`
* `make amlogic-ng`
* `make pc`

Full command to build different image:

* `PROJECT=*** ARCH=*** DISTRO=*** DEVICE=*** make image`


# Changes

* This is a fork of OpenPHT-Embedded that has been rebased from CoreELEC 9.2.8

* This new rebase *should* bring in support for any device that CoreELEC 9 supports

* My fork no longer keeps the OpenPHT(mediacenter) or Settings portions in seperate repo's. This Fork will use the settings and Mediacenter that is in the root directory.

* The OpenPHT(mediacenter) within this repo is the Latest clone of [OpenPHT](https://github.com/brfransen/OpenPHT) (buildfix tree), with a couple changes I had to apply to get it to build.

* The Settings within this repo is the Latest clone of [Settings Service](https://github.com/RasPlex/service.openelec.settings) - 1.9 tree

* FFmpeg has been updated to 4.2.4
* LibCEC has been updated to 6.0.6
* Plex Black Edition skin has been added by default

* [Use CURL object directly](https://github.com/Risca/OpenPHT/commit/873ac97cb1acd9f34b8c7360f4cf9f31151ea09f) merged
* [Reduce plex background jobs](https://github.com/Risca/OpenPHT/commit/1f1c932cf0b6548e192b7c90ec5d86f0c863fd24) merged

------------
------------

**Notes**

* SSH login details are user: "root" password: "openpht" or "rasplex" depending on distribution.

------------
------------

<details>
<summary>LibreELEC Stuff</summary>
<br>
Source code

https://github.com/LibreELEC/LibreELEC.tv

License
LibreELEC original code is released under GPLv2.
Copyright
As LibreELEC includes code from many upstream projects it includes many copyright owners. LibreELEC makes NO claim of copyright on any upstream code. However all original LibreELEC authored code is copyright LibreELEC.tv. For a complete copyright list please checkout the source code to examine license headers. Unless expressly stated otherwise all code submitted to the LibreELEC project (in any form) is licensed under GPLv2 and copyright is donated to LibreELEC.tv. This approach allows the project to stay manageable in the long term by giving us freedom to maintain the code as part of the whole without the management overhead of preserving contact with every submitter, e.g. GPLv3. You are absolutely free to retain copyright. To retain copyright simply add a copyright header to each submitted code page. If you submit code that is not your own work it is your responsibility to place a header stating the copyright.
</details>
<details>
<summary>CoreELEC Stuff</summary>
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
