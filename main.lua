SLASH_VCHALCULATOR1 = "/calc"
SLASH_VCHALCULATOR2 = "/="

SlashCmdList["VCHALCULATOR"] = function(msg) 
	local r = nil
	local vChalculatorGlobal = "temp_calc_global"
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