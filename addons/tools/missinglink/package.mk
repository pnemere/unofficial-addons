################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="missinglink"
PKG_VERSION="1.2.6"
PKG_REV="0"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="http://www.peaklabs.net/apps/missing-link/"
PKG_URL="http://www.peaklabs.net/missinglinkfiles/download.php?id=8665"
PKG_SOURCE_DIR="${PKG_NAME}_${PKG_VERSION}"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="Missing Link is a cross-platform remote, file and link sharing application"
PKG_LONGDESC="Missing Link is a cross-platform remote, file and link sharing application. Currently runs on Windows, Android and Linux"
PKG_DISCLAIMER="this is an unofficial addon. please don't ask for support in openelec forum / irc channel"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_ADDON_PROVIDES=""
PKG_ADDON_REPOVERSION="7.0"

PKG_AUTORECONF="no"

PKG_MAINTAINER="Peter Nemere (info@peaklabs.net)"

# make_target() {
#   make TARGET_CXX=$TARGET_CXX TARGET_CC=$TARGET_CC 7z 7za
# }

makeinstall_target() {
  : # nop
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
  cp -aP $PKG_BUILD/bin/* $ADDON_BUILD/$PKG_ADDON_ID/bin
}
