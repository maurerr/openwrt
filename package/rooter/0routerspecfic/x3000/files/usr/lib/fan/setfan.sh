#!/bin/sh

log() {
	modlog "Fan Set" "$@"
}

rng=$1

onat=$(echo $rng | cut -d, -f1)
offat=$(echo $rng | cut -d, -f2)
uci set fan.fan.onat=$onat
uci set fan.fan.offat=$offat
uci commit fan
