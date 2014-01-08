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
		if (DEFAULT_CHAT_FRAME) then 
			DEFAULT_CHAT_FRAME:AddMessage("|cffc7c7cfv|rChalculator: "..msg.."|cff666666 = |r"..r)
		end
	end
	return r
end