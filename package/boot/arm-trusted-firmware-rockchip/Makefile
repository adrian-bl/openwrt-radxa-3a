#
# Copyright (C) 2020 Tobias Maedel <openwrt@tbspace.de>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=arm-trusted-firmware-rockchip
PKG_VERSION:=2.9.0
PKG_RELEASE:=1

PKG_SOURCE:=atf-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mj22226/atf/releases/download/v$(PKG_VERSION)-1686372922/atf-v$(PKG_VERSION).tar.gz?
PKG_HASH:=d5b299c63e24477bef981adaccaea5c273661ecaf4fe6f4a7113d2c3a22fbf1f

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=license.md

PKG_MAINTAINER:=Tobias Maedel <openwrt@tbspace.de>

MAKE_PATH:=$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/arm-trusted-firmware-rockchip
    SECTION:=boot
    CATEGORY:=Boot Loaders
    TITLE:=ARM Trusted Firmware for Rockchip
    DEPENDS:=@TARGET_rockchip_armv8
endef

define Build/Prepare
	$(TAR) -C $(PKG_BUILD_DIR) -xf $(DL_DIR)/$(PKG_SOURCE)
endef

define Build/Compile
endef

define Build/InstallDev
	$(INSTALL_DIR) -p $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/rk*.elf $(STAGING_DIR_IMAGE)/
	$(CP) $(PKG_BUILD_DIR)/rk*.bin $(STAGING_DIR_IMAGE)/
endef

define Package/arm-trusted-firmware-rockchip/install
endef

$(eval $(call BuildPackage,arm-trusted-firmware-rockchip))
