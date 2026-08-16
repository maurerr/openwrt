#!/bin/sh

	rm /tmp/ipip
	curl -k http://api.ipify.org?format=json > /tmp/xpip
	curl -k http://api.ipify.org?format=json > /tmp/xpip
	mv /tmp/xpip /tmp/ipip
