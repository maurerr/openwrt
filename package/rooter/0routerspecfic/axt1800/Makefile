#Owned by DairyMan@Whirlpool
#
#Copyright GNU act.
include $(TOPDIR)/rules.mk

PKG_NAME:=axt1800
PKG_VERSION:=1.000
PKG_RELEASE:=1

PKG_MAINTAINER:=Created by DM/makefile by Cobia@whirlpool
include $(INCLUDE_DIR)/package.mk

define Package/axt1800
  SECTION:=utils
  CATEGORY:=ROOter
  SUBMENU:=Router Specific
  TITLE:=Install scripts for axt1800
  PKGARCH:=all
endef

define Package/axt1800/description
  Helper scripts to install scripts for axt1800
endef


define Build/Compile
endef

define Package/axt1800/install
	$(CP) ./files/* $(1)/


endef

$(eval $(call BuildPackage,axt1800))
