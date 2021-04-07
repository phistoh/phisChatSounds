local addonName, phis = ...

local phisFrame = CreateFrame('Frame', addonName..'CheckFrame', UIParent)

phisFrame:RegisterEvent("CHAT_MSG_GUILD")
phisFrame:RegisterEvent("CHAT_MSG_OFFICER")

phisFrame:SetScript("OnEvent", function(self, event, ...) 
	-- PlaySound(111366, "master") -- UI_VoiceChat_ChatMessageIncoming
	-- PlaySound(111365, "master") -- UI_VoiceChat_ChannelInitiated
	PlaySound(3081, "master") -- TellMessage
end)
