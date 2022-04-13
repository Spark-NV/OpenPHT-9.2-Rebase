################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="OpenPHT-settings"
PKG_VERSION="1.9"
PKG_ARCH="any"
PKG_LICENSE="prop."
PKG_SITE="http://www.rasplex.com"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain Python2 connman pygobject dbus-python"
PKG_SECTION=""
PKG_SHORTDESC="OpenPHT-settings: Settings dialog for OpenPHT-Embedded/RasPlex"
PKG_LONGDESC="OpenPHT-settings: is a settings dialog for OpenPHT-Embedded/RasPlex"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="DISTRONAME=$DISTRONAME ROOT_PASSWORD=$ROOT_PASSWORD"

if [ "$DISPLAYSERVER" = "x11" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET setxkbmap"
else
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET bkeymaps"
fi

post_patch() {
  rm -rf $BUILD/$PKG_NAME-$PKG_VERSION
  mkdir $BUILD/$PKG_NAME-$PKG_VERSION
  cp -r $ROOT/OpenPHT-1.9-Settings-Service/* $BUILD/$PKG_NAME-$PKG_VERSION/
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/coreelec
    cp $PKG_DIR/scripts/* $INSTALL/usr/lib/coreelec

  python -Wi -t -B $TOOLCHAIN/lib/python2.7/compileall.py $INSTALL/usr/share/XBMC/addons/service.coreelec.settings/resources/lib/ -f
  rm -rf `find $INSTALL/usr/share/XBMC/addons/service.coreelec.settings/resources/lib/ -name "*.py"`

  python -Wi -t -B $TOOLCHAIN/lib/python2.7/compileall.py $INSTALL/usr/share/XBMC/addons/service.coreelec.settings/oe.py -f
  rm -rf $INSTALL/usr/share/XBMC/addons/service.coreelec.settings/oe.py
}

post_install() {
  enable_service backup-restore.service
  enable_service factory-reset.service
}

