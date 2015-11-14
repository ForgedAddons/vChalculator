local addon, ns = ...

SLASH_VCHALCULATOR1 = "/="
SLASH_VCHALCULATOR2 = "/chalc"
SLASH_VCHALCULATOR3 = "/calc"

SlashCmdList["VCHALCULATOR"] = function(msg) 
	local r = nil
	local vChalculatorGlobal = "temp_chalculator_global"
	setglobal(vChalculatorGlobal, nil)
	RunScript(vChalculatorGlobal.."=("..msg..")")
	r = getglobal(vChalculatorGlobal)
	if (r ~= nil) then
		ns.Printf("%s = %s", msg, r)
	end
	return r
end