local addonName, phis = ...
phis.lastMessageTime = 0

local phisFrame = CreateFrame('Frame', addonName..'CheckFrame', UIParent)

-------------------------
--   ADDON FUNCTIONS   --
-------------------------

local function initAddon()
	-- first time loading the addon
	print('|cFF6666CC'..GetAddOnMetadata(addonName,'Title')..' v'..GetAddOnMetadata(addonName,'Version')..'|r loaded for the first time.')
	phisChatSoundsSavedVars = {}
	phisChatSoundsSavedVars.loudMessageIntervall = 600
end

local function playNotification(self, event)
	if event == 'CHAT_MSG_GUILD' or event == 'CHAT_MSG_OFFICER' then
		
		if not phisChatSoundsSavedVars then
			initAddon()
		end
		
		local currentTime = GetServerTime()
		phis.loudMessageIntervall = phisChatSoundsSavedVars.loudMessageIntervall
	
		if (currentTime - phis.lastMessageTime) > phis.loudMessageIntervall then 
			PlaySound(12889, "master") -- AlarmClockWarning3
		else
			-- play both simultaneously for louder volume
			PlaySound(111366, "master") -- UI_VoiceChat_ChatMessageIncoming
			PlaySound(111365, "master") -- UI_VoiceChat_ChannelInitiated
		end
		
		phis.lastMessageTime = currentTime
	end
end

-------------------------
--    SLASH COMMANDS   --
-------------------------

SLASH_PCS1 = '/phischatsounds'
SLASH_PCS2 = '/pcs'

SlashCmdList['PCS'] = function(msg)
	if not phisChatSoundsSavedVars then
		initAddon()
	end
	if tonumber(msg) then
		phisChatSoundsSavedVars.loudMessageIntervall = tonumber(msg)
		print('|cFF6666CC'..addonName..':|r '..'Time between messages now set to '..phisChatSoundsSavedVars.loudMessageIntervall..' seconds.')
	else
		print('|cFF6666CC'..addonName..' v'..GetAddOnMetadata(addonName,'Version')..'|r: Set the time needed between two consecutive messages for a louder notification to occur with "/pcs [sec]" with [sec] being the number of seconds.\nTime between messages currently set to |cFF6666CC'..phisChatSoundsSavedVars.loudMessageIntervall..'|r seconds.')
	end	
end

-------------------------
--        EVENTS       --
-------------------------

phisFrame:RegisterEvent('CHAT_MSG_GUILD')
phisFrame:RegisterEvent('CHAT_MSG_OFFICER')

phisFrame:SetScript("OnEvent", playNotification)