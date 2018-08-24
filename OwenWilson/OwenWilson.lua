local WOWsounds = {}
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowa.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowb.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowc.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowd.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowe.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowf.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowg.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowh.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowi.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowj.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\wowk.mp3'
WOWsounds[#WOWsounds+1] = 'Interface\\AddOns\\OwenWilson\\sounds\\Kachow.mp3'
local soundLength = #WOWsounds

local lootFrame = CreateFrame("Frame")

lootFrame:RegisterEvent("LOOT_OPENED")


message('Owen Wilson loaded ' .. soundLength .. ' looting sounds.')

lootFrame:SetScript("OnEvent",function(self, event, ...)
	local g = math.random(soundLength)
	PlaySoundFile(WOWsounds[g], "Master")
end)
