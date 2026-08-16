module("luci.controller.fan", package.seeall)
local http = require("luci.http")

I18N = require "luci.i18n"
translate = I18N.translate

function index()
	entry({"admin", "system", "fan"}, template("fan/fan"), _(translate("Fan Control")), 69)
	
	entry({"admin", "system", "getfan"}, call("action_getfan"))
	entry({"admin", "system", "getfanstat"}, call("action_getfanstat"))
	entry({"admin", "system", "setfan"}, call("action_setfan"))
end

function action_getfan()
	local rv = {}
	
	rv["temp"] = luci.model.uci.cursor():get("fan", "fan", "temp")
	rv["onat"] = luci.model.uci.cursor():get("fan", "fan", "onat")
	rv["offat"] = luci.model.uci.cursor():get("fan", "fan", "offat")
	rv["state"] = luci.model.uci.cursor():get("fan", "fan", "state")
	
	luci.http.prepare_content("application/json")
	luci.http.write_json(rv)
end

function action_getfanstat()
	local rv = {}
	
	rv["temp"] = luci.model.uci.cursor():get("fan", "fan", "temp")
	rv["state"] = luci.model.uci.cursor():get("fan", "fan", "state")
	
	luci.http.prepare_content("application/json")
	luci.http.write_json(rv)
end

function action_setfan()
	local set = luci.http.formvalue("set")
	os.execute("/usr/lib/fan/setfan.sh \"" .. set .. "\"")
end