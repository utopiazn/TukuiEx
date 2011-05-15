-- a command to show frame you currently have mouseovered
SLASH_FRAME1 = "/frame"
SLASH_FRAME2 = "/창"
SLASH_FRAME3 = "/프레임"
SLASH_FRAME4 = "/ㄺ믇"
SlashCmdList["FRAME"] = function(arg)
	if arg ~= "" then
		arg = _G[arg]
	else
		arg = GetMouseFocus()
	end
	if arg ~= nil and arg:GetName() ~= nil then
		local point, relativeTo, relativePoint, xOfs, yOfs = arg:GetPoint()
		ChatFrame1:AddMessage("|cffCC0000~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
		ChatFrame1:AddMessage("이름: |cffFFD100"..arg:GetName())
		if arg:GetParent() and arg:GetParent():GetName() then
			ChatFrame1:AddMessage("상위: |cffFFD100"..arg:GetParent():GetName())
		end
 
		ChatFrame1:AddMessage("너비: |cffFFD100"..format("%.2f",arg:GetWidth()))
		ChatFrame1:AddMessage("높이: |cffFFD100"..format("%.2f",arg:GetHeight()))
		ChatFrame1:AddMessage("단계: |cffFFD100"..arg:GetFrameStrata())
		ChatFrame1:AddMessage("수준: |cffFFD100"..arg:GetFrameLevel())
 
		if xOfs then
			ChatFrame1:AddMessage("X: |cffFFD100"..format("%.2f",xOfs))
		end
		if yOfs then
			ChatFrame1:AddMessage("Y: |cffFFD100"..format("%.2f",yOfs))
		end
		if relativeTo and relativeTo:GetName() then
			ChatFrame1:AddMessage("위치: |cffFFD100"..point.."|r부분이 "..relativeTo:GetName().."의 |cffFFD100"..relativePoint.."|r부분에 위치해있습니다.")
		end
		ChatFrame1:AddMessage("|cffCC0000~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
	elseif arg == nil then
		ChatFrame1:AddMessage("인식할 수 없습니다.")
	else
		ChatFrame1:AddMessage("창 정보를 찾을 수 없습니다.")
	end
end

-- enable lua error by command
function SlashCmdList.LUAERROR(msg, editbox)
	if (msg == 'on') or (msg == "켜기") or (msg == "활성화") then
		SetCVar("scriptErrors", 1)
		-- because sometime we need to /rl to show an error on login.
		ReloadUI()
	elseif (msg == 'off') or (msg == "끄기") or (msg == "비활성화") then
		SetCVar("scriptErrors", 0)
	else
		print("|cffC495DDTukui:|r /luaerror on - /luaerror off")
		print("|cffC495DDTukui:|r /lua오류 켜기 - /lua오류 끄기")
		print("|cffC495DDTukui:|r /lua오류 활성화 - /lua오류 비활성화")
	end
end
SLASH_LUAERROR1 = '/luaerror'
SLASH_LUAERROR2 = '/lua오류'
SLASH_LUAERROR3 = '/루아오류'
SLASH_LUAERROR1 = '/ㅣㅕㅁㄷㄱ객'