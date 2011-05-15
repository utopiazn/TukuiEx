local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales

if not TukuiExSkin or not IsAddOnLoaded("Quartz") then return end
local Quartz3 = LibStub("AceAddon-3.0"):GetAddon("Quartz3")

TukuiExSkin:RegisterSkin("Quartz",function(Skin, skin, Layout, layout, config)
	-- Skin and Layout overrides
	Skin.SkinQuartzBar = function(self, bar)
		self:SkinFrame(bar)
		-- Skin Icon
		if not bar.IconBorder then
			-- Can't skin a texture, so we create a frame for this
			bar.IconBorder = CreateFrame("Frame",nil,bar)
			self:SkinFrame(bar.IconBorder)
			bar.IconBorder:Point("TOPLEFT",bar.Icon,"TOPLEFT",-config.borderWidth,config.borderWidth)
			bar.IconBorder:Point("BOTTOMRIGHT",bar.Icon,"BOTTOMRIGHT",config.borderWidth,-config.borderWidth)
			bar.IconBorder:SetFrameStrata("LOW")
		end
		if bar.config.hideicon then
			bar.IconBorder:Hide()
		else
			bar.IconBorder:Show()
		end
		-- Fonts
		bar.Text:SetFont(config.font,bar.config.fontsize)
		bar.TimeText:SetFont(config.font,bar.config.timefontsize)
		-- Bar Texture
		bar.Bar:SetStatusBarTexture(config.barTexture)
	end
	
	Layout.PositionQuartzBar = dummy
	
	-- Hook Bar Template
	local template = Quartz3.CastBarTemplate.template
	
	template.ApplySettings_ = template.ApplySettings
	template.ApplySettings = function (self)
		self:ApplySettings_()
		self:Width(self.config.w + config.borderWidth * 2)
		self:Height(self.config.h + config.borderWidth * 2)
		
		skin:SkinQuartzBar(self)
		
		self.Bar:SetFrameStrata("HIGH")
		self:SetFrameStrata("HIGH")
	end
	
	-- Hook spellcasts to reskin after the shield disrupts it.
	template.UNIT_SPELLCAST_NOT_INTERRUPTIBLE_ = template.UNIT_SPELLCAST_NOT_INTERRUPTIBLE
	template.UNIT_SPELLCAST_NOT_INTERRUPTIBLE = function(self, event, unit)
		self:UNIT_SPELLCAST_NOT_INTERRUPTIBLE_(event, unit)
		skin:SkinQuartzBar(self)
	end
	template.UNIT_SPELLCAST_START_ = template.UNIT_SPELLCAST_START
	template.UNIT_SPELLCAST_START = function(self, event, unit)
		self:UNIT_SPELLCAST_START_(event, unit)
		skin:SkinQuartzBar(self)
	end
	-- Fix for uninterruptable channeled casts - Provided by Caulk on the TukUI forums.
	template.UNIT_SPELLCAST_CHANNEL_START_ = template.UNIT_SPELLCAST_CHANNEL_START
	template.UNIT_SPELLCAST_CHANNEL_START = function(self, event, unit)
		self:UNIT_SPELLCAST_CHANNEL_START_(event, unit)
		skin:SkinQuartzBar(self)
	end
	-- Force updates
	Quartz3:ApplySettings()
end)