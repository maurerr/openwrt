include $(TOPDIR)/rules.mk

PKG_NAME:=rooter-rqmi
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/rqmi
  SECTION:=net
  CATEGORY:=ROOter
  SUBMENU:=Drivers
  DEPENDS:=+uqmi +luci-proto-qmi
  TITLE:=ROOter QMI netifd protocol handler
endef

define Package/rqmi/description
  ROOter-specific QMI netifd protocol handler using the OpenWrt uqmi utility.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/rqmi/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,rqmi))
