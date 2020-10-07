#
# MT7628 Profiles
#

define Device/tplink
  TPLINK_FLASHLAYOUT :=
  TPLINK_HWID :=
  TPLINK_HWREV :=
  TPLINK_HWREVADD :=
  TPLINK_HVERSION :=
  KERNEL := $(KERNEL_DTB)
  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v2-header -e
  IMAGES += tftp-recovery.bin
  IMAGE/factory.bin := tplink-v2-image -e
  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
  IMAGE/sysupgrade.bin := tplink-v2-image -s -e | append-metadata | \
	check-size $$$$(IMAGE_SIZE)
endef
DEVICE_VARS += TPLINK_FLASHLAYOUT TPLINK_HWID TPLINK_HWREV TPLINK_HWREVADD TPLINK_HVERSION

define Device/mt7628
  DTS := MT7628
  BLOCKSIZE := 64k
  IMAGE_SIZE := $(ralink_default_fw_size_4M)
  DEVICE_TITLE := MediaTek MT7628 EVB
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
endef
TARGET_DEVICES += mt7628

define Device/miwifi-nano
  DTS := MIWIFI-NANO
  IMAGE_SIZE := $(ralink_default_fw_size_16M)
  DEVICE_TITLE := Xiaomi MiWiFi Nano
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
endef
TARGET_DEVICES += miwifi-nano

define Device/tplink_tl-wr841n-v14
  $(Device/tplink)
  DTS := TL-WR841NV14
  IMAGE_SIZE := 3968k
  DEVICE_TITLE := TP-Link TL-WR841N v14
  TPLINK_FLASHLAYOUT := 4Mmtk
  TPLINK_HWID := 0x08410014
  TPLINK_HWREV := 0x1
  TPLINK_HWREVADD := 0x14
  TPLINK_HVERSION := 3
  IMAGE/tftp-recovery.bin := pad-extra 64k | $$(IMAGE/factory.bin)
endef
TARGET_DEVICES += tplink_tl-wr841n-v14

define Device/vocore2
  DTS := VOCORE2
  IMAGE_SIZE := $(ralink_default_fw_size_16M)
  DEVICE_TITLE := VoCore VoCore2
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport \
    kmod-sdhci kmod-sdhci-mt7620
endef
TARGET_DEVICES += vocore2

define Device/wl-wn575a3
  DTS := WL-WN575A3
  IMAGE_SIZE := $(ralink_default_fw_size_8M)
  DEVICE_TITLE := Wavlink WL-WN575A3
endef
TARGET_DEVICES += wl-wn575a3

define Device/wrtnode2p
  DTS := WRTNODE2P
  IMAGE_SIZE := $(ralink_default_fw_size_16M)
  DEVICE_TITLE := WRTnode 2P
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
endef
TARGET_DEVICES += wrtnode2p

define Device/duzun-dm06
  DTS := DUZUN-DM06
  DEVICE_TITLE := DuZun DM06
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
endef
TARGET_DEVICES += duzun-dm06

define Device/mac1200r-v2
  DTS := MAC1200RV2
  DEVICE_TITLE := Mercury MAC1200R v2.0
  SUPPORTED_DEVICES := mac1200rv2
endef
TARGET_DEVICES += mac1200r-v2
