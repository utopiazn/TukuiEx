local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

if not C["panels"].location then return end

local location = CreateFrame("Frame","TukuiLocation",UIParent)
location:CreatePanel("Default", 0, 22, "TOP", UIParent, "TOP", 0,2)
location:Width(148)
location:SetFrameLevel(5)
location:SetFrameStrata("LOW")
location:CreateShadow("Default")

local location_text = location:CreateFontString(nil,"Overlay")
location_text:SetFont(C["media"].font, 12)
location_text:Point("TOP", 0, 0)
location_text:SetPoint("BOTTOM")
location_text:Width(location:GetWidth()-6)
location_text:SetShadowColor(0, 0, 0)
location_text:SetShadowOffset(1.25, -1.25)

local location_Update = function()
	local pvp = GetZonePVPInfo()
	location_text:SetText(GetMinimapZoneText())
	if pvp == "friendly" then
		location_text:SetTextColor(0.1, 1.0, 0.1)
	elseif pvp == "sanctuary" then
		location_text:SetTextColor(0.41, 0.8, 0.94)
	elseif pvp == "arena" or pvp == "hostile" then
		location_text:SetTextColor(1.0, 0.1, 0.1)
	elseif pvp == "contested" then
		location_text:SetTextColor(1.0, 0.7, 0.0)
	else
		location_text:SetTextColor(1.0, 1.0, 1.0)
	end
end
 
location:RegisterEvent("PLAYER_ENTERING_WORLD")
location:RegisterEvent("ZONE_CHANGED_NEW_AREA")
location:RegisterEvent("ZONE_CHANGED")
location:RegisterEvent("ZONE_CHANGED_INDOORS")
location:SetScript("OnEvent",location_Update) 
location:SetScript("OnMouseDown", function()
	if WorldMapFrame:IsShown() then
			WorldMapFrame:Hide()
	else
			WorldMapFrame:Show()
	end
end)