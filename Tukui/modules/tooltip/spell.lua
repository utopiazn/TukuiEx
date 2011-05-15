local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales
if C["tooltip"].enable ~= true then return end

local function addAuraSource(self, func, unit, index, filter)
	local srcUnit = select(8, func(unit, index, filter))
	if srcUnit then
		self:AddLine(" ")
		
		local src = GetUnitName(srcUnit, true)
		if srcUnit == "pet" or srcUnit == "vehicle" then
			src = format("%s (%s)", src, GetUnitName("player", true))
		else
			local partypet = srcUnit:match("^partypet(%d+)$")
			local raidpet = srcUnit:match("^raidpet(%d+)$")
			if partypet then
				src = format("%s (%s)", src, GetUnitName("party"..partypet, true))
			elseif raidpet then
				src = format("%s (%s)", src, GetUnitName("raid"..raidpet, true))
			end
		end
		
		self:AddLine("|cFFCA3C3C"..L.tooltip_whocast.."|r "..src)
		self:Show()
	end
end

local funcs = {
	SetUnitAura = UnitAura,
	SetUnitBuff = UnitBuff,
	SetUnitDebuff = UnitDebuff,
}

for k, v in pairs(funcs) do
	hooksecurefunc(GameTooltip, k, function(self, unit, index, filter)
		addAuraSource(self, v, unit, index, filter)
	end)
end

--------------------------------------------------------------------
-- SpellID's by Silverwind
-- http://wow.curseforge.com/addons/spellid/
--------------------------------------------------------------------

hooksecurefunc(GameTooltip, "SetUnitBuff", function(self,...)
	if IsShiftKeyDown() or IsAltKeyDown() then
		local id = select(11,UnitBuff(...))
		if id then
			self:AddLine("|cFFCA3C3CID|r "..id)
			self:Show()
		end
	end
end)

hooksecurefunc(GameTooltip, "SetUnitDebuff", function(self,...)
	if IsShiftKeyDown() or IsAltKeyDown() then
		local id = select(11,UnitDebuff(...))
		if id then
			self:AddLine("|cFFCA3C3CID|r "..id)
			self:Show()
		end
	end
end)

hooksecurefunc(GameTooltip, "SetUnitAura", function(self,...)
	if IsShiftKeyDown() or IsAltKeyDown() then
		local id = select(11,UnitAura(...))
		if id then
			self:AddLine("|cFFCA3C3CID|r "..id)
			self:Show()
		end
	end
end)

hooksecurefunc("SetItemRef", function(link, text, button, chatFrame)
	if IsShiftKeyDown() or IsAltKeyDown() then
		if string.find(link,"^spell:") then
			local id = string.sub(link,7)
			ItemRefTooltip:AddLine("|cFFCA3C3CID|r "..id)
			ItemRefTooltip:Show()
		end
	end
end)

GameTooltip:HookScript("OnTooltipSetSpell", function(self)
	if IsShiftKeyDown() or IsAltKeyDown() then
		local id = select(3,self:GetSpell())
		if id then
			self:AddLine("|cFFCA3C3CID|r "..id)
			self:Show()
		end
	end
end)
