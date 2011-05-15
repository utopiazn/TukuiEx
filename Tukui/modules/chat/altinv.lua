local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales
if C["chat"].enable ~= true then return end

-- Alt Invite
hooksecurefunc("SetItemRef", function(link)
    local name = link and link:match("^player:([^:]+).*$")
    if not name then return end
    if IsAltKeyDown() then
        InviteUnit(name) DEFAULT_CHAT_FRAME.editBox:Hide()
    end
end)