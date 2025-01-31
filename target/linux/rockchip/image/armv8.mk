# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

# FIT will be loaded at 0x02080000. Leave 16M for that, align it to 2M and load the kernel after it.
KERNEL_LOADADDR := 0x03200000

define Device/friendlyarm_nanopi-neo3
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi NEO3
  SOC := rk3328
  UBOOT_DEVICE_NAME := nanopi-r2s-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += friendlyarm_nanopi-neo3

define Device/firefly_roc-rk3328-cc
  DEVICE_VENDOR := Firefly
  DEVICE_MODEL := ROC-RK3328-CC
  SOC := rk3328
  DEVICE_DTS := rockchip/rk3328-roc-cc
  UBOOT_DEVICE_NAME := roc-cc-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += firefly_roc-rk3328-cc

define Device/friendlyarm_nanopi-r2s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R2S
  SOC := rk3328
  UBOOT_DEVICE_NAME := nanopi-r2s-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += friendlyarm_nanopi-r2s

define Device/friendlyarm_nanopi-r4s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R4S
  DEVICE_VARIANT := 4GB LPDDR4
  SOC := rk3399
  UBOOT_DEVICE_NAME := nanopi-r4s-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r4s | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyarm_nanopi-r4s

define Device/friendlyelec_nanopi-r5c
  DEVICE_VENDOR := Friendlyelec
  DEVICE_MODEL := NanoPi R5C
  SOC := rk3568
  UBOOT_DEVICE_NAME := nanopi-r5c-rk3568
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r5s | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyelec_nanopi-r5c

define Device/friendlyelec_nanopi-r5s
  DEVICE_VENDOR := Friendlyelec
  DEVICE_MODEL := NanoPi R5S
  SOC := rk3568
  UBOOT_DEVICE_NAME := nanopi-r5s-rk3568
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r5s | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyelec_nanopi-r5s

define Device/friendlyelec_nanopi-r6c
  DEVICE_VENDOR := Friendlyelec
  DEVICE_MODEL := NanoPi R6C
  SOC := rk3588s
  UBOOT_DEVICE_NAME := nanopi-r6c-rk3588
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyelec_nanopi-r6c

define Device/friendlyelec_nanopi-r6c-plus
  DEVICE_VENDOR := Friendlyelec
  DEVICE_MODEL := NanoPi R6C Plus
  SOC := rk3588s
  UBOOT_DEVICE_NAME := nanopi-r6c-rk3588
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyelec_nanopi-r6c-plus

define Device/friendlyelec_nanopi-r6s
  DEVICE_VENDOR := Friendlyelec
  DEVICE_MODEL := NanoPi R6S
  SOC := rk3588s
  UBOOT_DEVICE_NAME := nanopi-r6s-rk3588
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyelec_nanopi-r6s

define Device/pine64_rockpro64
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := RockPro64
  SOC := rk3399
  UBOOT_DEVICE_NAME := rockpro64-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += pine64_rockpro64

define Device/pine64_quartz64-a
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := QUARTZ64
  SOC := rk3566
  SUPPORTED_DEVICES := pine64,quartz64-a
  UBOOT_DEVICE_NAME := quartz64-a-rk3566
  IMAGE/sysupgrade.img.gz := boot-common | boot-script quartz64-a | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += pine64_quartz64-a

define Device/radxa_rock-3a
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK3 Model A
  SOC := rk3568
  SUPPORTED_DEVICES := radxa,rock3a
  UBOOT_DEVICE_NAME := rock-3a-rk3568
  IMAGE/sysupgrade.img.gz := boot-common | boot-script rock-3a | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += radxa_rock-3a

define Device/radxa_rock-pi-4
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi 4
  DEVICE_DTS := rockchip/rk3399-rock-pi-4b
  SOC := rk3399
  SUPPORTED_DEVICES := radxa,rockpi4b
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := \
	brcmfmac-firmware-43456-sdio \
	brcmfmac-firmware-43456-sdio-rockpi-4 \
	kmod-brcmfmac wpad-openssl
endef
TARGET_DEVICES += radxa_rock-pi-4

define Device/rockchip_bpi-r2-pro
  DEVICE_VENDOR := Rockchip
  DEVICE_MODEL := Bananapi-R2 Pro
  SOC := rk3568
  SUPPORTED_DEVICES := rockchip,rk3568-bpi-r2pro
  UBOOT_DEVICE_NAME := bpi-r2-pro-rk3568
  IMAGE/sysupgrade.img.gz := boot-common | boot-script quartz64-a | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += rockchip_bpi-r2-pro

define Device/xunlong_orangepi-5-plus
  DEVICE_VENDOR := XunLong
  DEVICE_MODEL := RK3588 OPi 5 Plus
  SOC := rk3588
  UBOOT_DEVICE_NAME := orangepi-5-plus-rk3588
  SUPPORTED_DEVICES := rockchip,rk3588-orangepi-5-plus
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
 DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += xunlong_orangepi-5-plus
