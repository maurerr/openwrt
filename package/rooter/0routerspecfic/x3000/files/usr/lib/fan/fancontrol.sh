#!/bin/sh

log() {
	modlog "Fan Control" "$@"
}

get_temperature() {
    temperature=$(cat /sys/devices/virtual/thermal/thermal_zone0/temp)
    temperature=$((temperature/1000))
    echo "$temperature"
}

set_fan() {
	if [ "$1" = "on" ]; then
		echo "1" > /sys/devices/virtual/thermal/cooling_device0/cur_state
	else
		echo "0" > /sys/devices/virtual/thermal/cooling_device0/cur_state
	fi
}

set_fan off
uci set fan.fan.state="Off"
while true; do
	onat=$(uci -q get fan.fan.onat)
	offat=$(uci -q get fan.fan.offat)
	temperature=$(get_temperature)
	uci set fan.fan.temp=$temperature
	if [ "$temperature" -ge $onat ]; then
		set_fan on
		uci set fan.fan.state="On"
	fi
	if [ "$temperature" -le $offat ]; then
		set_fan off
		uci set fan.fan.state="Off"
	fi
	uci commit fan
	sleep 5
done