local T, C, L = unpack(Tukui)

local LSM = LibStub("LibSharedMedia-3.0", true)
if LSM == nil then return end

LSM:Register("statusbar","Tukui", [[Interface\AddOns\Tukui\medias\textures\normTex.tga]])
LSM:Register("background","Tukui", [[Interface\AddOns\Tukui\medias\textures\blank.tga]])
LSM:Register("border", "Tukui", [[Interface\AddOns\Tukui\medias\textures\glowTex.tga]])
LSM:Register("font","Tukui", [[Interface\AddOns\Tukui\medias\fonts\font.ttf]], 1)
LSM:Register("font","Tukui UF", [[Interface\AddOns\Tukui\medias\fonts\uf_font.ttf]], 1)
LSM:Register("font","Tukui Damage", [[Interface\AddOns\Tukui\medias\fonts\combat_font.ttf]], 1)
LSM:Register("font","Tukui Nameplates", [[Interface\AddOns\Tukui\medias\fonts\np_font.ttf]], 1)
LSM:Register("sound","Tukui Warning", [[Interface\AddOns\Tukui\medias\sounds\warning.mp3]])
LSM:Register("sound","Tukui Whisper", [[Interface\AddOns\Tukui\medias\sounds\whisper.mp3]])