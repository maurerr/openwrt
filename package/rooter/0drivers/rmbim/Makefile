include $(TOPDIR)/rules.mk

PKG_NAME:=rooter-rmbim
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/rmbim
  SECTION:=net
  CATEGORY:=ROOter
  SUBMENU:=Drivers
  DEPENDS:=+umbim +luci-proto-mbim
  TITLE:=ROOter MBIM netifd protocol handler
endef

define Package/rmbim/description
  ROOter-specific MBIM netifd protocol handler using the OpenWrt umbim utility.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/rmbim/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,rmbim))
