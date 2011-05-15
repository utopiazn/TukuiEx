local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales

TukuiExSkin = CreateFrame("Frame")
local TukuiExSkin = TukuiExSkin

function TukuiExSkin:SkinFrame(frame)
	frame:SetTemplate("Default")
end

function TukuiExSkin:SkinButton(button)
	self:SkinFrame(button)
	button:StyleButton(button.GetCheckedTexture and button:GetCheckedTexture())
end

function TukuiExSkin:SkinActionButton(button)
	if not button then return end
	self:SkinButton(button)
	local name = button:GetName()
	button.count = button.count or _G[name.."Count"]
	if button.count then
		button.count:SetFont(self.font,self.fontSize,self.fontFlags)
		button.count:SetDrawLayer("OVERLAY")
	end
	button.hotkey = button.hotkey or _G[name.."HotKey"]
	if button.hotkey then
		button.hotkey:SetFont(self.font,self.fontSize,self.fontFlags)
		button.hotkey:SetDrawLayer("OVERLAY")
	end
	button.icon = button.icon or _G[name.."Icon"]
	if button.icon then
		button.icon:SetTexCoord(unpack(self.buttonZoom))
		button.icon:SetDrawLayer("ARTWORK",-1)
		button.icon:ClearAllPoints()
		button.icon:Point("TOPLEFT",button,"TOPLEFT",self.borderWidth, -self.borderWidth)
		button.icon:Point("BOTTOMRIGHT",button,"BOTTOMRIGHT",-self.borderWidth, self.borderWidth)
	end
	button.textName = button.textName or _G[name.."Name"]
	if button.textName then
		button.textName:SetAlpha(0)
	end
	button.cd = button.cd or _G[name.."Cooldown"]
end

TukuiExSkin.barTexture = C["media"].normTex
TukuiExSkin.bgTexture = C["media"].blank
TukuiExSkin.font = C["media"].uffont
TukuiExSkin.smallFont = C["media"].uffont
TukuiExSkin.fontSize = 12
TukuiExSkin.buttonSize = T.buttonsize
TukuiExSkin.buttonSpacing = T.buttonspacing
TukuiExSkin.borderWidth = T.Scale(2)
TukuiExSkin.buttonZoom = {.08,.92,.08,.92}
TukuiExSkin.barSpacing = T.Scale(1)
TukuiExSkin.barHeight = T.Scale(20)
TukuiExSkin.skins = {}
TukuiExSkin.__index = TukuiExSkin

-- TukUI-Specific Integration Support

local CustomSkin = setmetatable(CustomSkin or {},TukuiExSkin)

-- Dummy function expected by some skins
function dummy() end

function TukuiExSkin:RegisterSkin(name, initFunc)
	self = TukuiExSkin -- Static function
	if type(initFunc) ~= "function" then error("initFunc must be a function!",2) end
	self.skins[name] = initFunc
	if name == "LibSharedMedia" then -- Load LibSharedMedia early.
		initFunc(self, CustomSkin, self, CustomSkin, CustomSkin)
		self.skins[name] = nil
	end
end

TukuiExSkin:RegisterEvent("PLAYER_LOGIN")
TukuiExSkin:SetScript("OnEvent",function(self)
	self:UnregisterEvent("PLAYER_LOGIN")
	self:SetScript("OnEvent",nil)
	-- Initialize all skins
	for name, func in pairs(self.skins) do
		func(self,CustomSkin,self,CustomSkin,CustomSkin) -- TukuiExSkin functions as skin, layout, and config.
	end
end)
