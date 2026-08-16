#!/bin/sh

# ROOter OpenWrt 25.12 compatibility: Replace system files with ROOter versions
# identified as build-time collisions.

[ -f /etc/hotplug.d/usb/20-usb_mode.rooter ] && mv /etc/hotplug.d/usb/20-usb_mode.rooter /etc/hotplug.d/usb/20-usb_mode
[ -f /etc/init.d/usbmode.rooter ] && mv /etc/init.d/usbmode.rooter /etc/init.d/usbmode
[ -f /etc/init.d/openvpn.rooter ] && mv /etc/init.d/openvpn.rooter /etc/init.d/openvpn

exit 0
