local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales

if not TukuiExSkin or not QBar then return end
local QBar = _G["QBar"]
local db = _G["QBar_Config"] or {error = true}

TukuiExSkin:RegisterSkin("QBar",function(Skin,skin,Layout,layout,config)
	QBar.UpdateButtons_  = QBar.UpdateButtons
	QBar.UpdateButtons = function()
		local self = QBar
		db.padding = config.buttonSpacing
		db.scale = 1
		db.btnSize = config.buttonSize
		if not InCombatLockdown() then
			self:SetScale(db.scale)
		end
		self:UpdateButtons_()
		if not self.bg and #self.items > 0 then
			self.bg = CreateFrame("Frame",nil,self.items[1])
			skin:SkinFrame(self.bg)
			self.bg:SetFrameStrata("BACKGROUND")
			if not db.mirrored then
				self.bg:Point("TOPLEFT",self.items[1],"TOPLEFT",-config.buttonSpacing,config.buttonSpacing)
			else
				self.bg:Point("BOTTOMRIGHT",self.items[1],"BOTTOMRIGHT",config.buttonSpacing,-config.buttonSpacing)
			end
		end
		local visible = 0
		for i,k in ipairs(self.items) do
			if k:IsVisible() then
				visible = visible + 1
				skin:SkinFrame(k)
				k.icon:ClearAllPoints()
				k.icon:Point("TOPLEFT",k,"TOPLEFT",config.borderWidth,-config.borderWidth)
				k.icon:Point("BOTTOMRIGHT",k,"BOTTOMRIGHT",-config.borderWidth,config.borderWidth)
				k.icon:SetTexCoord(unpack(config.buttonZoom))
			end
		end
		if self.bg then
			if db.vertical then
				self.bg:Width(config.buttonSpacing * 2 + config.buttonSize)
				self.bg:Height(config.buttonSpacing + (config.buttonSize + config.buttonSpacing) * visible)
			else
				self.bg:Height(config.buttonSpacing * 2 + config.buttonSize)
				self.bg:Width(config.buttonSpacing + (config.buttonSize + config.buttonSpacing) * visible)
			end
		end
	end
end)