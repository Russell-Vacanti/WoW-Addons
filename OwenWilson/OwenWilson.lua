local lootFrame = CreateFrame("Frame")

local sounds = {
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowa.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowb.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowc.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowd.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowe.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowf.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowg.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowh.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowi.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowj.mp3',
  'Interface\\AddOns\\OwenWilson\\Sounds\\wowk.mp3'
}

local kachow = 'Interface\\AddOns\\OwenWilson\\Sounds\\Kachow.mp3'

message('Owen Wilson Wow Addon is loaded.')

lootFrame:RegisterEvent("LOOT_SLOT_CLEARED")

lootFrame:SetScript("OnEvent",function(self, event, ...)
  PlaySoundFile(sounds[math.random(1, #sounds)]] , "Master")
end)
