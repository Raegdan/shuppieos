local pcall, dofile, _G = pcall, dofile, _G

module "luci.version"

if pcall(dofile, "/etc/openwrt_release") and _G.DISTRIB_DESCRIPTION then
	distname    = ""
	distversion = _G.DISTRIB_DESCRIPTION
else
	distname    = "OpenWrt"
	distversion = "Development Snapshot"
end

luciname    = "LuCI Master"
luciversion = "git-15.126.50380-7a54785"
