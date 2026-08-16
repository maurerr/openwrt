#Owned by DairyMan@Whirlpool
#
#Copyright GNU act.
include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-fancontrol
PKG_VERSION:=1.000
PKG_RELEASE:=1

PKG_MAINTAINER:=Created by DM/makefile by Cobia@whirlpool
include $(INCLUDE_DIR)/package.mk

define Package/luci-app-fancontrol
  SECTION:=utils
  CATEGORY:=ROOter
  SUBMENU:=Router Specific
  TITLE:=Install scripts for fan control
  PKGARCH:=all
endef

define Package/luci-app-fancontrol/description
  Helper scripts to install scripts for fan control
endef


define Build/Compile
endef

define Package/luci-app-fancontrol/install
	$(CP) ./files/* $(1)/


endef

$(eval $(call BuildPackage,luci-app-fancontrol))
