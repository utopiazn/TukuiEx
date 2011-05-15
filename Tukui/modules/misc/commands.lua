local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

-- enable or disable an addon via command
SlashCmdList.DISABLE_ADDON = function(addon) local _, _, _, _, _, reason, _ = GetAddOnInfo(addon) if reason ~= "MISSING" then DisableAddOn(addon) ReloadUI() else print(L.core_addonnotfound) end end
SLASH_DISABLE_ADDON1 = "/disable"
SLASH_DISABLE_ADDON2 = "/비활성화"
SLASH_DISABLE_ADDON3 = "/끄기"
SLASH_DISABLE_ADDON4 = "/얀뮤ㅣㄷ"
SlashCmdList.ENABLE_ADDON = function(addon) local _, _, _, _, _, reason, _ = GetAddOnInfo(addon) if reason ~= "MISSING" then EnableAddOn(addon) LoadAddOn(addon) ReloadUI() else print(L.core_addonnotfound) end end
SLASH_ENABLE_ADDON1 = "/enable"
SLASH_ENABLE_ADDON2 = "/활성화"
SLASH_ENABLE_ADDON3 = "/켜기"
SLASH_ENABLE_ADDON4 = "/두뮤ㅣㄷ"

-- switch to heal layout via a command
SLASH_TUKUIHEAL1 = "/heal"
SLASH_TUKUIHEAL2 = "/치유"
SLASH_TUKUIHEAL3 = "/치유담당"
SLASH_TUKUIHEAL4 = "/ㅎㄷ미"
SlashCmdList.TUKUIHEAL = function()
	DisableAddOn("Tukui_Raid")
	EnableAddOn("Tukui_Raid_Healing")
	ReloadUI()
end

-- switch to dps layout via a command
SLASH_TUKUIDPS1 = "/dps"
SLASH_TUKUIDPS2 = "/공격방어"
SLASH_TUKUIDPS3 = "/공격방어담당"
SLASH_TUKUIDPS4 = "/엔"
SlashCmdList.TUKUIDPS = function()
	DisableAddOn("Tukui_Raid_Healing")
	EnableAddOn("Tukui_Raid")
	ReloadUI()
end

-- fix combatlog manually when it broke
SLASH_CLFIX1 = "/clfix"
SLASH_CLFIX2 = "/치럍"
SlashCmdList.CLFIX = CombatLogClearEntries

-- ready check shortcut
SlashCmdList.RCSLASH = DoReadyCheck
SLASH_RCSLASH1 = "/rc"
SLASH_RCSLASH2 = "/전준"
SLASH_RCSLASH3 = "/ㄱㅊ"

SlashCmdList["GROUPDISBAND"] = function()
	if UnitIsRaidOfficer("player") then
		StaticPopup_Show("TUKUIDISBAND_RAID")
	end
end
SLASH_GROUPDISBAND1 = '/rd'
SLASH_GROUPDISBAND2 = '/해체'
SLASH_GROUPDISBAND3 = '/공격대해체'
SLASH_GROUPDISBAND4 = '/ㄱㅇ'

-- Leave party chat command
SlashCmdList["LEAVEPARTY"] = function()
	LeaveParty()
end
SLASH_LEAVEPARTY1 = '/leaveparty'
SLASH_LEAVEPARTY2 = '/lp'
SLASH_LEAVEPARTY3 = '/파티탈퇴'
SLASH_LEAVEPARTY4 = '/파탈'
SLASH_LEAVEPARTY5 = '/탈퇴'
SLASH_LEAVEPARTY6 = '/ㅣㄷㅁㅍ뎀ㄱ쇼'
SLASH_LEAVEPARTY7 = '/ㅣㅔ'

-- Align your shit, like a bawse.
SLASH_ALI1 = "/ali"
SLASH_ALI2 = "/align"
SLASH_ALI3 = "/격자"
SLASH_ALI4 = "/미ㅑ"
SLASH_ALI5 = "/미ㅑ후"
SlashCmdList["ALI"] = function(gridsize)
	local defsize = 16
	local w = T.getscreenwidth
	local h = T.getscreenheight
	local x = tonumber(gridsize) or defsize

	function Grid() 
		ali = CreateFrame('Frame', nil, UIParent) 
		ali:SetFrameLevel(0)
		ali:SetFrameStrata("BACKGROUND")

		for i=-(w/x/2), w/x/2 do		
			local Aliv = ali:CreateTexture(nil, 'BACKGROUND') 
			Aliv:SetTexture(1, 0, 0)
			Aliv:Point("CENTER", UIParent, "CENTER", i*x, 0)
			Aliv:SetSize(1,T.getscreenheight)
		end
		for i=-(h/x/2), h/x/2 do		
			local Alih = ali:CreateTexture(nil, 'BACKGROUND') 
			Alih:SetTexture(1, 0, 0)
			Alih:Point("CENTER", UIParent, "CENTER", 0, i*x)
			Alih:SetSize(T.getscreenwidth,1)
		end
	end
	
	if Ali then
		if ox ~= x then
			ox = x 
			ali:Hide()					
			Grid() 
			Ali = true
		else
			ali:Hide()
			Ali = false
		end
	else
		ox = x 
		Grid() 
		Ali = true		
	end
end