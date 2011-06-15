local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

if C["bags"].enable == true then return end

local TukuiBagBar = CreateFrame("Frame", "TukuiBagBar", UIParent)

local anchor = CreateFrame("Button", "TukuiBagBarAnchor", UIParent)
anchor:SetWidth(27*(NUM_BAG_FRAMES + 1) + 4*NUM_BAG_FRAMES)
anchor:SetHeight(27)
anchor:SetTemplate("Default")
anchor:SetBackdropBorderColor(1, 0, 0, 1)
anchor:SetMovable(true)
anchor:SetFrameLevel(7)
anchor.text = T.SetFontString(anchor, C["media"].uffont, 12)
anchor.text:SetPoint("CENTER")
anchor.text:SetText(L.move_bag)
if C["chat"].background then
	anchor:SetPoint("BOTTOMLEFT", TukuiChatBackgroundLeft, "TOPLEFT", 0, 5)
else
	anchor:SetPoint("BOTTOMLEFT", TukuiInfoLeft, "TOPLEFT", 0, 5)
end
anchor.text.Show = function() anchor:Show() end
anchor.text.Hide = function() anchor:Hide() end
anchor:Hide()

local function OnEnter()
	TukuiBagBar:SetAlpha(1)
end

local function OnLeave()
	TukuiBagBar:SetAlpha(0)
end

local function SkinBag(bag)
	local icon = _G[bag:GetName().."IconTexture"]
	bag:Size(27)
	bag.oldTex = icon:GetTexture()
	
	bag:StripTextures()
	bag:SetTemplate("Default", true)
	bag:StyleButton(true)
	icon:SetTexture(bag.oldTex)
	icon:ClearAllPoints()
	icon:Point("TOPLEFT", 2, -2)
	icon:Point("BOTTOMRIGHT", -2, 2)
	icon:SetTexCoord(.08, .92, .08, .92)
end

local function LoadBagBar(self)
	MainMenuBarBackpackButton:SetParent(self)
	MainMenuBarBackpackButton.SetParent = T.dummy
	MainMenuBarBackpackButton:ClearAllPoints()
	MainMenuBarBackpackButton:Point("LEFT", self, "LEFT")
	
	MainMenuBarBackpackButton:HookScript("OnEnter", OnEnter)
	MainMenuBarBackpackButton:HookScript("OnLeave", OnLeave)
	
	SkinBag(MainMenuBarBackpackButton)
	MainMenuBarBackpackButtonCount:SetFont(C["media"].font, 10, "THINOUTLINE")
	MainMenuBarBackpackButtonCount:ClearAllPoints()
	MainMenuBarBackpackButtonCount:Point("BOTTOMRIGHT", MainMenuBarBackpackButton, "BOTTOMRIGHT", 0, 2)
	
	for i=0, NUM_BAG_FRAMES-1 do
		_G["CharacterBag"..i.."Slot"]:SetParent(self)
		_G["CharacterBag"..i.."Slot"].SetParent = T.dummy
		
		SkinBag(_G["CharacterBag"..i.."Slot"])
		
		if i == 0 then
			_G["CharacterBag"..i.."Slot"]:ClearAllPoints()
			_G["CharacterBag"..i.."Slot"]:Point("LEFT", MainMenuBarBackpackButton, "RIGHT", 4, 0)
		else
			_G["CharacterBag"..i.."Slot"]:ClearAllPoints()
			_G["CharacterBag"..i.."Slot"]:Point("LEFT", _G["CharacterBag"..(i-1).."Slot"], "RIGHT", 4, 0)	
		end
		
			_G["CharacterBag"..i.."Slot"]:HookScript("OnEnter", OnEnter)
			_G["CharacterBag"..i.."Slot"]:HookScript("OnLeave", OnLeave)		
	end
end

TukuiBagBar:RegisterEvent("PLAYER_LOGIN")
TukuiBagBar:SetScript("OnEvent", LoadBagBar)
TukuiBagBar:Point("CENTER", anchor, "CENTER", 0, 0)

TukuiBagBar:Width(27*(NUM_BAG_FRAMES + 1) + 4*NUM_BAG_FRAMES)
TukuiBagBar:Height(31)

TukuiBagBar:SetAlpha(0)
TukuiBagBar:EnableMouse(true)
TukuiBagBar:SetScript("OnEnter", OnEnter)
TukuiBagBar:SetScript("OnLeave", OnLeave)