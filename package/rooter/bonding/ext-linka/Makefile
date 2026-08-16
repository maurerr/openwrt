#Owned by DairyMan@Whirlpool
#
#Copyright GNU act.
include $(TOPDIR)/rules.mk

PKG_NAME:=ext-linka
PKG_VERSION:=1.000
PKG_RELEASE:=1

PKG_MAINTAINER:=Created by DM/makefile by Cobia@whirlpool
include $(INCLUDE_DIR)/package.mk

define Package/ext-linka
  SECTION:=utils
  CATEGORY:=ROOter
  DEPENDS:=+luci +ext-rooter-basic +build-admin \
		+pingtest +kmod-bonding \
		+extramenu +ext-blockport +ext-domain +ext-blacklist \
		+bwmon +464xlat +webconsole \
		+ext-theme +luci-theme-argon +ext-login \
		+ca-bundle +ca-certificates \
		+arc-storage \
		+luci-app-sqm +kmod-sched-cake +luci-app-nft-qos \
		+ext-command +ext-speedtest \
		+openvpn-openssl \
		+ext-extra +luci-app-hotspot \
		+usbmuxd +libusbmuxd-utils +libimobiledevice-utils +kmod-usb-net-ipheth \
		+luci-ssl +usbutils +openssl-util \
		+wget +coreutils-base64 
  TITLE:=ROOter support for World routers
  PKGARCH:=all
endef

define Package/ext-linka/description
  Helper scripts to enable support for World routers
endef


define Build/Compile
endef

$(eval $(call BuildPackage,ext-linka))
