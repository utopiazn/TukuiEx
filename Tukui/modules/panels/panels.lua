local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

if C["panels"].toppanel then
	local ttoppanel = CreateFrame("Frame", "TukuiTopPanel", UIParent)
	ttoppanel:CreatePanel("Transparent", 1, 20, "TOP", UIParent, "TOP", 0, 0)
	ttoppanel:ClearAllPoints()
	ttoppanel:SetPoint("TOPLEFT", UIParent, "TOPLEFT", -6, 6)
	ttoppanel:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", 6, 6)
	ttoppanel:SetFrameStrata("BACKGROUND")
	ttoppanel:SetFrameLevel(0)
end

if C["panels"].bottompanel then
	local tbottompanel = CreateFrame("Frame", "TukuiBottomPanel", UIParent)
	tbottompanel:CreatePanel("Transparent", 1, 30, "BOTTOM", UIParent, "BOTTOM", 0, 0)
	tbottompanel:ClearAllPoints()
	tbottompanel:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", -6, -6)
	tbottompanel:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", 6, -6)
	tbottompanel:SetFrameStrata("BACKGROUND")
	tbottompanel:SetFrameLevel(0)
end

local TukuiBar1 = CreateFrame("Frame", "TukuiBar1", UIParent, "SecureHandlerStateTemplate")
TukuiBar1:CreatePanel("Default", 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, 10)
TukuiBar1:SetWidth((T.buttonsize * 12) + (T.buttonspacing * 13))
TukuiBar1:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))
TukuiBar1:SetFrameStrata("BACKGROUND")
TukuiBar1:SetFrameLevel(1)

local TukuiBar2 = CreateFrame("Frame", "TukuiBar2", UIParent)
TukuiBar2:CreatePanel("Default", 1, 1, "BOTTOMRIGHT", TukuiBar1, "BOTTOMLEFT", -6, 0)
TukuiBar2:SetWidth((T.buttonsize * 6) + (T.buttonspacing * 7))
TukuiBar2:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))
TukuiBar2:SetFrameStrata("BACKGROUND")
TukuiBar2:SetFrameLevel(2)
TukuiBar2:SetAlpha(0)
if T.lowversion then
	TukuiBar2:SetAlpha(0)
else
	TukuiBar2:SetAlpha(1)
end

local TukuiBar3 = CreateFrame("Frame", "TukuiBar3", UIParent)
TukuiBar3:CreatePanel("Default", 1, 1, "BOTTOMLEFT", TukuiBar1, "BOTTOMRIGHT", 6, 0)
TukuiBar3:SetWidth((T.buttonsize * 6) + (T.buttonspacing * 7))
TukuiBar3:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))
TukuiBar3:SetFrameStrata("BACKGROUND")
TukuiBar3:SetFrameLevel(2)
if T.lowversion then
	TukuiBar3:SetAlpha(0)
else
	TukuiBar3:SetAlpha(1)
end

local TukuiBar4 = CreateFrame("Frame", "TukuiBar4", UIParent)
TukuiBar4:CreatePanel("Default", 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, 10)
TukuiBar4:SetWidth((T.buttonsize * 12) + (T.buttonspacing * 13))
TukuiBar4:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))
TukuiBar4:SetFrameStrata("BACKGROUND")
TukuiBar4:SetFrameLevel(2)
TukuiBar4:SetAlpha(0)

local TukuiBar5 = CreateFrame("Frame", "TukuiBar5", UIParent)
TukuiBar5:CreatePanel("Default", 1, (T.buttonsize * 12) + (T.buttonspacing * 13), "RIGHT", UIParent, "RIGHT", -5, -14)
TukuiBar5:SetWidth((T.buttonsize * 1) + (T.buttonspacing * 2))
TukuiBar5:SetFrameStrata("BACKGROUND")
TukuiBar5:SetFrameLevel(2)
TukuiBar5:SetAlpha(0)

local TukuiBar6 = CreateFrame("Frame", "TukuiBar6", UIParent)
TukuiBar6:SetWidth((T.buttonsize * 1) + (T.buttonspacing * 2))
TukuiBar6:SetHeight((T.buttonsize * 12) + (T.buttonspacing * 13))
TukuiBar6:SetPoint("LEFT", TukuiBar5, "LEFT", 0, 0)
TukuiBar6:SetFrameStrata("BACKGROUND")
TukuiBar6:SetFrameLevel(2)
TukuiBar6:SetAlpha(0)

local TukuiBar7 = CreateFrame("Frame", "TukuiBar7", UIParent)
TukuiBar7:SetWidth((T.buttonsize * 1) + (T.buttonspacing * 2))
TukuiBar7:SetHeight((T.buttonsize * 12) + (T.buttonspacing * 13))
TukuiBar7:SetPoint("TOP", TukuiBar5, "TOP", 0 , 0)
TukuiBar7:SetFrameStrata("BACKGROUND")
TukuiBar7:SetFrameLevel(2)
TukuiBar7:SetAlpha(0)

local petbg = CreateFrame("Frame", "TukuiPetBar", UIParent, "SecureHandlerStateTemplate")
petbg:CreatePanel("Default", T.petbuttonsize + (T.petbuttonspacing * 2), (T.petbuttonsize * 10) + (T.petbuttonspacing * 11), "RIGHT", TukuiBar5, "LEFT", -6, 0)
petbg:SetAlpha(0)

local ltpetbg1 = CreateFrame("Frame", "TukuiLineToPetActionBarBackground", petbg)
ltpetbg1:CreatePanel("Default", 24, 265, "LEFT", petbg, "RIGHT", 0, 0)
ltpetbg1:SetParent(petbg)
ltpetbg1:SetFrameStrata("BACKGROUND")
ltpetbg1:SetFrameLevel(0)
ltpetbg1:SetAlpha(0)

-- INVISIBLE FRAME COVERING BOTTOM ACTIONBARS JUST TO PARENT UF CORRECTLY
local invbarbg = CreateFrame("Frame", "InvTukuiActionBarBackground", UIParent)
if T.lowversion then
	invbarbg:SetPoint("TOPLEFT", TukuiBar1)
	invbarbg:SetPoint("BOTTOMRIGHT", TukuiBar1)
	TukuiBar2:Hide()
	TukuiBar3:Hide()
else
	invbarbg:SetPoint("TOPLEFT", TukuiBar2)
	invbarbg:SetPoint("BOTTOMRIGHT", TukuiBar3)
end

-- MOVE/HIDE SOME ELEMENTS IF CHAT BACKGROUND IS ENABLED
local moveright = 0
local moveleft = 0
if C["chat"].background then
	moveleft = 5
	if C["chat"].rightchat then
		moveright = 5
	end
end

-- INFO LEFT (FOR STATS)
local ileft = CreateFrame("Frame", "TukuiInfoLeft", TukuiBar1)
ileft:CreatePanel("Default", C["panels"].infowidth, 23, "BOTTOMLEFT", UIParent, "BOTTOMLEFT", 5 + moveleft, 10)
ileft:SetFrameLevel(2)
ileft:SetFrameStrata("BACKGROUND")

	local ileftb = CreateFrame("Button", "TukuiInfoLeftButton", TukuiInfoLeft)
	ileftb:Point("BOTTOMRIGHT", ileft, "TOPRIGHT", 0, 3)
	ileftb:Height(18)
	ileftb:Width(18)
	ileftb:SetNormalTexture(C["media"].configicon)
	ileftb:SetAlpha(0.5)
	--ileftb:SetTemplate("Default")

	ileftb:SetScript("OnMouseDown", function(self)
		if IsAddOnLoaded("Tukui_ConfigUI") then
			if not TukuiConfigUI or not TukuiConfigUI:IsShown() then
				CreateTukuiConfigUI()
			else
				TukuiConfigUI:Hide()
			end
		else
			print(L.core_tukui..L.core_addonnotfound)
		end
	end)
	ileftb:SetScript("OnEnter", function()
		ileftb:SetAlpha(1)
	end)
	ileftb:SetScript("OnLeave", function()
		ileftb:SetAlpha(0.5)
	end)

-- INFO RIGHT (FOR STATS)
local iright = CreateFrame("Frame", "TukuiInfoRight", TukuiBar1)
iright:CreatePanel("Default", C["panels"].infowidth, 23, "BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -5 - moveright, 10)
iright:SetFrameLevel(2)
iright:SetFrameStrata("BACKGROUND")

if C["chat"].background then
	-- CHAT BG LEFT
	local chatleftbg = CreateFrame("Frame", "TukuiChatBackgroundLeft", TukuiInfoLeft)
	chatleftbg:CreatePanel("Transparent", C["panels"].infowidth + 10, C["chat"].height + 64, "BOTTOM", TukuiInfoLeft, "BOTTOM", 0, -5)

	-- CHAT BG RIGHT
	local chatrightbg = CreateFrame("Frame", "TukuiChatBackgroundRight", TukuiInfoRight)
	chatrightbg:CreatePanel("Transparent", C["panels"].infowidth + 10, C["chat"].height + 64, "BOTTOM", TukuiInfoRight, "BOTTOM", 0, -5)
	
	-- LEFT TAB PANEL
	local tabsbgleft = CreateFrame("Frame", "TukuiTabsLeftBackground", TukuiBar1)
	tabsbgleft:CreatePanel("Default", C["panels"].infowidth, 23, "TOP", chatleftbg, "TOP", 0, -5)
	tabsbgleft:SetFrameLevel(2)
	tabsbgleft:SetFrameStrata("BACKGROUND")
		
	-- RIGHT TAB PANEL
	local tabsbgright = CreateFrame("Frame", "TukuiTabsRightBackground", TukuiBar1)
	tabsbgright:CreatePanel("Default", C["panels"].infowidth, 23, "TOP", chatrightbg, "TOP", 0, -5)
	tabsbgright:SetFrameLevel(2)
	tabsbgright:SetFrameStrata("BACKGROUND")
	
	if not C["chat"].rightchat then
		chatrightbg:Hide()
		tabsbgright:Hide()
	end
end

if TukuiMinimap then
	local minimapstatsleft = CreateFrame("Frame", "TukuiMinimapStatsLeft", TukuiMinimap)
	minimapstatsleft:CreatePanel("Default", ((TukuiMinimap:GetWidth() + 4) / 2) -3, 19, "TOPLEFT", TukuiMinimap, "BOTTOMLEFT", 0, -2)

	local minimapstatsright = CreateFrame("Frame", "TukuiMinimapStatsRight", TukuiMinimap)
	minimapstatsright:CreatePanel("Default", ((TukuiMinimap:GetWidth() + 4) / 2) -3, 19, "TOPRIGHT", TukuiMinimap, "BOTTOMRIGHT", 0, -2)
end

--BATTLEGROUND STATS FRAME
if C["datatext"].battleground == true then
	local bgframe = CreateFrame("Frame", "TukuiInfoLeftBattleGround", UIParent)
	bgframe:CreatePanel("Default", 1, 1, "TOPLEFT", UIParent, "BOTTOMLEFT", 0, 0)
	bgframe:SetAllPoints(ileft)
	bgframe:SetFrameStrata("LOW")
	bgframe:SetFrameLevel(0)
	bgframe:EnableMouse(true)
end