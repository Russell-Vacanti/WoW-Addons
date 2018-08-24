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
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowa.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowb.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowc.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowd.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowe.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowf.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowg.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowh.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowi.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowj.mp3')
table.insert(sounds, 'Interface\\AddOns\\OwenWilson\\Sounds\\wowk.mp3')

local kachow = 'Interface\\AddOns\\OwenWilson\\Sounds\\Kachow.mp3'
local soundLength = 0
message('Owen Wilson Wow Addon is loaded.')
math.randomseed(os.time())
for index in pairs(sounds) do
    soundLength = soundLength + 1
end

lootFrame:RegisterEvent("LOOT_OPENED")

lootFrame:SetScript("OnEvent",function(self, event, ...)
  PlaySoundFile(sounds[math.random(table.getn(sounds))] , "Master")
end)
