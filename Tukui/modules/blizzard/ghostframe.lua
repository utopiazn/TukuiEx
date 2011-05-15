local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales
-- GhostFrame at top
GhostFrameContentsFrame:Width(148)
GhostFrameContentsFrame:ClearAllPoints()
GhostFrameContentsFrame:SetPoint("CENTER")
GhostFrameContentsFrame.SetPoint = T.dummy
GhostFrame:SetFrameStrata("HIGH")
GhostFrame:SetFrameLevel(10)
GhostFrame:ClearAllPoints()
GhostFrame:Point("TOP", UIParent, 0, 26)
GhostFrameContentsFrameIcon:SetAlpha(0)
GhostFrameContentsFrameText:ClearAllPoints()
if T.client == "koKR" then
	GhostFrameContentsFrameText:SetText("무덤으로 돌아가기") -- fix for korean WoW client
end
GhostFrameContentsFrameText:Point("BOTTOM", 0, 5)