# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team CoreELEC (https://coreelec.org)

PKG_NAME="libamcodec"
PKG_VERSION="4eebd67"
PKG_LICENSE="proprietary"
PKG_SITE="http://openlinux.amlogic.com"
PKG_URL="https://github.com/osmc/libamcodec/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="libamplayer: Interface library for Amlogic media codecs"
PKG_TOOLCHAIN="manual"

post_unpack() {
  sed -e "s|-lamadec||g" -i $PKG_BUILD/amcodec/Makefile
}

make_target() {
  make -C amavutils CC="$CC" PREFIX="$SYSROOT_PREFIX/usr"
  mkdir -p $SYSROOT_PREFIX/usr/lib
  cp -PR amavutils/*.so $SYSROOT_PREFIX/usr/lib

  make -C amadec CC="$CC" PREFIX="$SYSROOT_PREFIX/usr" CROSS_PREFIX="$TARGET_PREFIX" install
  make -C amcodec HEADERS_DIR="$SYSROOT_PREFIX/usr/include/amcodec" PREFIX="$SYSROOT_PREFIX/usr" install
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib
  cp -PR amavutils/*.so $INSTALL/usr/lib

  make -C amadec PREFIX="$INSTALL/usr" install
  make -C amcodec HEADERS_DIR="$INSTALL/usr/include/amcodec" PREFIX="$INSTALL/usr" install

  # kodi prefers libamlplayer
  ln -sf libamcodec.so $INSTALL/usr/lib/libamplayer.so

}

