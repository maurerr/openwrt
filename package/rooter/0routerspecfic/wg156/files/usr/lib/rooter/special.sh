#!/bin/sh

uci set pbr.config.verbosity="0"
uci commit pbr
/etc/init.d/pbr restart


i=523
echo $i > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio${i}/direction
echo 1  > /sys/class/gpio/gpio${i}/value
