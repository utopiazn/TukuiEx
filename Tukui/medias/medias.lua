local T, C, L = unpack(select(2, ...))

C["media"] = {
	-- fonts (ENGLISH, KOREAN)
	["font"] = [=[Interface\Addons\Tukui\medias\fonts\normal_font.ttf]=], -- general font of tukui
	["uffont"] = [[Interface\AddOns\Tukui\medias\fonts\uf_font.ttf]], -- general font of unitframes
	["dmgfont"] = [[Interface\AddOns\Tukui\medias\fonts\combat_font.ttf]], -- general font of dmg / sct
	["npfont"] = [[Interface\AddOns\Tukui\medias\fonts\np_font.ttf]], -- general font of nameplates
	
	-- fonts (GLOBAL)
	["pixelfont"] = [=[Interface\Addons\Tukui\medias\fonts\pixel_font.ttf]=], -- general font of tukui
	
	-- textures
	["normTex"] = [[Interface\AddOns\Tukui\medias\textures\normTex]], -- texture used for tukui healthbar/powerbar/etc
	["glowTex"] = [[Interface\AddOns\Tukui\medias\textures\glowTex]], -- the glow text around some frame
	["bubbleTex"] = [[Interface\AddOns\Tukui\medias\textures\bubbleTex]], -- unitframes combo points
	["copyicon"] = [[Interface\AddOns\Tukui\medias\textures\copy]], -- copy icon
	["configicon"] = [[Interface\AddOns\Tukui\medias\textures\config]], -- config icon
	["blank"] = [[Interface\AddOns\Tukui\medias\textures\blank]], -- the main texture for all borders/panels
	["bordercolor"] = { .6,.6,.6 }, -- border color of tukui panels
	["altbordercolor"] = { .4,.4,.4 }, -- alternative border color, mainly for unitframes text panels
	["backdropcolor"] = { .1,.1,.1 }, -- background color of tukui panels
	["buttonhover"] = [[Interface\AddOns\Tukui\medias\textures\button_hover]],
	
	-- sound
	["whisper"] = [[Interface\AddOns\Tukui\medias\sounds\whisper.mp3]],
	["warning"] = [[Interface\AddOns\Tukui\medias\sounds\warning.mp3]],
}
