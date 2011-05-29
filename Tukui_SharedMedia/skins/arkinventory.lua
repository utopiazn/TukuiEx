local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales

if not TukuiExSkin or not IsAddOnLoaded("ArkInventory") then return end
local ArkInventory = LibStub("AceAddon-3.0"):GetAddon("ArkInventory")
if not ArkInventory then return end
local _G = _G

TukuiExSkin:RegisterSkin("ArkInventory",function(Skin,skin,Layout,layout,config)	
	-- Hook paint function to strip background and borders
	ArkInventory.Frame_Main_Paint_ = ArkInventory.Frame_Main_Paint
	ArkInventory.Frame_Main_Paint = function(frame)
		--ArkInventory.Frame_Main_Paint_(frame) 
		if not ArkInventory.ValidFrame(frame, true) then return	end
		for i = 1, select("#",frame:GetChildren()) do
			local subframe = select(i,frame:GetChildren())
			local name = subframe:GetName()
			if name then
				if _G[name.."ArkBorder"] then _G[name.."ArkBorder"]:Hide() end
				if _G[name.."Background"] then _G[name.."Background"]:Hide() end
			end
			skin:SkinFrame(subframe)
			-- Whew! We just saved the wasteful creation of over 7 tables!
		end
	end
	
	--[[ Item Containers ]]
	ArkInventory.Frame_Container_Draw_ = ArkInventory.Frame_Container_Draw
	ArkInventory.Frame_Container_Draw = function(frame)
		local loc_id = frame.ARK_Data.loc_id
		-- lock a few settings
		ArkInventory.LocationOptionSet(loc_id, "bar", "pad", "external", 2)
		ArkInventory.LocationOptionSet(loc_id, "window", "pad", 0)
		return ArkInventory.Frame_Container_Draw_(frame)
	end
	
	--[[ Scaling ]]
	ArkInventory.Frame_Main_Scale_ = ArkInventory.Frame_Main_Scale
	ArkInventory.Frame_Main_Scale = function(loc_id)
		-- Lock the scale at 1 to protect our pixel-perfect borders!
		ArkInventory.Frame_Main_Get( loc_id ):SetScale(1)
		ArkInventory.Frame_Main_Anchor_Set(loc_id)
	end
	
	--[[ Anchoring ]]
	ArkInventory.Frame_Main_Anchor_Set_ = ArkInventory.Frame_Main_Anchor_Set
	ArkInventory.Frame_Main_Anchor_Set = function(loc_id)
		ArkInventory.Frame_Main_Anchor_Set_(loc_id)
		local frame = ArkInventory.Frame_Main_Get(loc_id)
		frame = frame:GetName()
		local title = _G[frame..ArkInventory.Const.Frame.Title.Name]
		local search = _G[frame..ArkInventory.Const.Frame.Search.Name]
		local container = _G[frame..ArkInventory.Const.Frame.Container.Name]
		local changer = _G[frame..ArkInventory.Const.Frame.Changer.Name]
		local status = _G[frame..ArkInventory.Const.Frame.Status.Name]
		title:ClearAllPoints()
		title:SetPoint("TOPLEFT")
		title:SetPoint("TOPRIGHT")
		search:ClearAllPoints()
		search:SetPoint("TOPLEFT",title,"BOTTOMLEFT",0,-config.buttonSpacing)
		search:SetPoint("TOPRIGHT",title,"BOTTOMRIGHT",0,-config.buttonSpacing)
		container:ClearAllPoints()
		container:SetPoint("TOPLEFT",search,"BOTTOMLEFT",0,-config.buttonSpacing)
		container:SetPoint("TOPRIGHT",search,"BOTTOMRIGHT",0,-config.buttonSpacing)
		changer:ClearAllPoints()
		changer:SetPoint("TOPLEFT",container,"BOTTOMLEFT",0,-config.buttonSpacing)
		changer:SetPoint("TOPRIGHT",container,"BOTTOMRIGHT",0,-config.buttonSpacing)
		status:ClearAllPoints()
		status:SetPoint("TOPLEFT",changer,"BOTTOMLEFT",0,-config.buttonSpacing)
		status:SetPoint("TOPRIGHT",changer,"BOTTOMRIGHT",0,-config.buttonSpacing)
		-- Reanchor & resize internal components
		-- Status
		ArkInventory.Const.Frame.Status.Height = config.fontSize + config.borderWidth * 4
		_G[status:GetName().."EmptyText"]:SetPoint("LEFT",config.borderWidth,0)
		_G[status:GetName().."EmptyText"]:SetFont(config.font,config.fontSize,config.fontFlags)
		-- Restructure the gold display
		_G[status:GetName().."GoldCopperButton"]:SetPoint("RIGHT",-config.borderWidth,0)
		_G[status:GetName().."GoldCopperButtonText"]:SetFont(config.font,config.fontSize,config.fontFlags)
		--_G[status:GetName().."GoldCopperButtonText"]:SetPoint("RIGHT",-13,1)
		
		_G[status:GetName().."GoldSilverButton"]:SetPoint("RIGHT",_G[status:GetName().."GoldCopperButtonText"],"LEFT",-config.borderWidth,0)
		_G[status:GetName().."GoldSilverButtonText"]:SetFont(config.font,config.fontSize,config.fontFlags)
		--_G[status:GetName().."GoldSilverButtonText"]:SetPoint("RIGHT",-13,1)
		
		_G[status:GetName().."GoldGoldButton"]:SetPoint("RIGHT",_G[status:GetName().."GoldSilverButtonText"],"LEFT",-config.borderWidth,0)
		_G[status:GetName().."GoldGoldButtonText"]:SetFont(config.font,config.fontSize,config.fontFlags)
		--_G[status:GetName().."GoldSilverButtonText"]:SetPoint("RIGHT",-13,1)
		
	end
	
	ArkInventory.Const.Frame.Title.Height2 = 32
	
	-- Skin each bar
	ArkInventory.Frame_Bar_Paint_ = ArkInventory.Frame_Bar_Paint
	ArkInventory.Frame_Bar_Paint = function(bar)
		-- Option overrides
		local loc_id = bar.ARK_Data.loc_id
		ArkInventory.LocationOptionSet(loc_id, "bar", "pad", "internal" , 2)
		ArkInventory.LocationOptionSet(loc_id, "bar", "name", "height", 18)
		ArkInventory.Frame_Bar_Paint_(bar)
		if not bar then return end
		local name = bar:GetName()
		if _G[name.."ArkBorder"] then _G[name.."ArkBorder"]:Hide() end
		if _G[name.."Background"] then _G[name.."Background"]:Hide() end
		skin:SkinFrame(bar)
		-- Edit mode
		if ArkInventory.Global.Mode.Edit then
			bar:SetBackdropBorderColor(1,0,0,1)
			bar:SetBackdropColor(1,0,0,.1)
		end
	end
	
	--[[ Item Icons ]]
	ArkInventory.SetItemButtonTexture_ = ArkInventory.SetItemButtonTexture
	ArkInventory.SetItemButtonTexture = function(frame, texture, r, g, b)
		if not frame or not _G[frame:GetName().."IconTexture"] then return end
		local obj = _G[frame:GetName().."IconTexture"]
		if not texture then
			obj:Hide()
		else
			obj:SetTexture(texture)
			obj:SetTexCoord(unpack(config.buttonZoom))
			obj:SetVertexColor(r or 1, r and g or 1, r and b or 1)
			obj:ClearAllPoints()
			obj:SetPoint("TOPLEFT",config.borderWidth,-config.borderWidth)
			obj:SetPoint("BOTTOMRIGHT",-config.borderWidth,config.borderWidth)
		end
	end
	
	--[[ Item Border ]]
	ArkInventory.Frame_Item_Update_Border_ = ArkInventory.Frame_Item_Update_Border
	ArkInventory.Frame_Item_Update_Border = function(frame)
		ArkInventory.Frame_Item_Update_Border_(frame)
		if not frame or not _G[frame:GetName().."ArkBorder"] then return end
		local obj = _G[frame:GetName().."ArkBorder"]
		local r,g,b,a = obj:GetBackdropBorderColor()
		obj:Hide()
		skin:SkinFrame(frame)
		frame:SetBackdropBorderColor(r,g,b,a)

	end
end)