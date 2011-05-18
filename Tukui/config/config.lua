local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

C["general"] = {
	["autoscale"] = true,                               -- mainly enabled for users that don't want to mess with the config file
	["uiscale"] = 0.71,                                 -- set your value (between 0.64 and 1) of your uiscale if autoscale is off
	["overridelowtohigh"] = false,                      -- EXPERIMENTAL ONLY! override lower version to higher version on a lower reso.
	["overridehightolow"] = false,                      -- EXPERIMENTAL ONLY! override higher version to lower version on a higher reso.
	["multisampleprotect"] = true,                      -- i don't recommend this because of shitty border but, voila!
	["classcolor"] = true,                              -- enable classcolor theme
}

C["unitframes"] = {
	-- general options
	["enable"] = true,                                  -- do i really need to explain this?
	["enemyhcolor"] = false,                            -- enemy target (players) color by hostility, very useful for healer.
	["lowThreshold"] = 20,                              -- global low threshold, for low mana warning.
	["targetpowerpvponly"] = true,                      -- enable power text on pvp target only
	["showtotalhpmp"] = false,                          -- change the display of info text on player and target with XXXX/Total.
	["showperhp"] = true,                               -- show health percent text on health bar
	["showsmooth"] = true,                              -- enable smooth bar
	["charportrait"] = false,                           -- do i really need to explain this?
	["unicolor"] = false,                               -- enable unicolor theme
	["combatfeedback"] = true,                          -- enable combattext on player and target.
	["playeraggro"] = true,                             -- color player border to red if you have aggro on current target.
	["showfocustarget"] = true,                         -- show focus target

	-- priest only plugin
	["weakenedsoulbar"] = true,                         -- show weakened soul bar

	-- class bar
	["classbar"] = true,                                -- enable tukui classbar over player unit
	["combobar"] = true,                                -- enable tukui combobar over target unit

	-- altpowerbar
	["altpowerbar"] = true,                             -- enable unitframe altpowerbar

	-- arenaframes
	["arenaframes"] = true,                             -- enable tukz arena unitframes (requirement : tukui unitframes enabled)
}

C["raidframes"] = {
	["showrange"] = true,                               -- show range opacity on raidframes
	["raidalphaoor"] = 0.5,                             -- alpha of unitframes when unit is out of range
	["gridonly"] = true,                                -- enable grid only mode for all healer mode raid layout.
	["showsymbols"] = true,	                            -- show symbol.
	["aggro"] = true,                                   -- show aggro on all raids layouts
	["raidunitdebuffwatch"] = true,                     -- track important spell to watch in pve for grid mode.
	["cooldown"] = false,                     		    -- show cooldown number
	["gridhealthvertical"] = true,                      -- enable vertical grow on health bar for grid mode.
	["showplayerinparty"] = true,                       -- show my player frame in party
	["gridscale"] = 1,                                  -- set the healing grid scaling
	["healcomm"] = false,                               -- enable healprediction support.
	["maintank"] = false,                               -- enable maintank
	["mainassist"] = false,                             -- enable mainassist
	["role"] = false,                                   -- display role on raidframe
	["maxgroup"] = false,                               -- only show 5 groups in raid (25 mans raid)

	-- boss frames
	["showboss"] = true,                                -- enable boss unit frames for PVELOL encounters.
	["showperpw"] = true,
}

C["auras"] = {
	["player"] = true,                                  -- enable tukui buffs/debuffs
	["auratimer"] = true,                               -- enable timers on buffs/debuffs
	["auratextscale"] = 11,                             -- the font size of buffs/debuffs timers on unitframes
	["playerauras"] = false,                            -- enable auras
	["targetauras"] = true,                             -- enable auras on target unitframes
	["focusdebuffs"] = true,                            -- enable debuffs on focus unitframes
	["bossdebuffs"] = true,                             -- enable debuffs on boss unitframes
	["arenadebuffs"] = true,                            -- enable debuffs on arena unitframes
	["buffrows"] = 1,                                   -- number of player and target buff rows
	["debuffrows"] = 3,                                 -- number of player and target debuff rows
	["debuffnums"] = 5,                                 -- number of focus, arena and boss debuffs
	["totdebuffs"] = false,                             -- enable tot debuffs (high reso only)
	["onlyselfdebuffs"] = false,                        -- display only our own debuffs applied on target
}

C["castbar"] = {
	["enable"] = true,                                  -- enable tukui castbar
	["cblatency"] = false,                              -- enable castbar latency
	["cbicons"] = true,                                 -- enable icons on castbar
	["ufcastbar"] = true,                               -- set castbar on unitframes
	["focus"] = true,                                   -- enable focus castbar
	["boss"] = true,                                    -- enable boss castbar
	["arena"] = true,                                   -- enable arena castbar
	["defaultcolor"] = {0.31, 0.45, 0.63, 0.5},         -- castbar default color
}

C["actionbar"] = {
	["enable"] = true,                                  -- enable tukui action bars
	["hotkey"] = true,                                  -- enable hotkey display because it was a lot requested
	["btname"] = false,                                 -- display button name
	["hideshapeshift"] = false,                         -- hide shapeshift or totembar because it was a lot requested.
	["showgrid"] = true,                                -- show grid on empty button
	["buttonsize"] = 27,                                -- normal buttons size
	["petbuttonsize"] = 29,                             -- pet & stance buttons size
	["buttonspacing"] = 4,                              -- buttons spacing
}

C["bags"] = {
	["enable"] = true,                                  -- enable an all in one bag mod that fit tukui perfectly
}

C["map"] = {
	["enable"] = true,                                  -- reskin the map to fit tukui
	["mlocation"] = true,                                -- display location on minimap
}

C["loot"] = {
	["lootframe"] = true,                               -- reskin the loot frame to fit tukui
	["rolllootframe"] = true,                           -- reskin the roll frame to fit tukui
	["autogreed"] = true,                               -- auto-dez or auto-greed item at max level, auto-greed Frozen orb
}

C["cooldown"] = {
	["enable"] = true,                                  -- do i really need to explain this?
	["treshold"] = 8,                                   -- show decimal under X seconds and text turn red
}

C["datatext"] = {
	["fps_ms"] = 1,                                     -- show fps and ms on panels
	["system"] = 7,                                     -- show total memory and others systems infos on panels
	["bags"] = 4,                                       -- show space used in bags on panels
	["gold"] = 6,                                       -- show your current gold on panels
	["wowtime"] = 8,                                    -- show time on panels
	["guild"] = 3,                                      -- show number on guildmate connected on panels
	["dur"] = 5,                                        -- show your equipment durability on panels.
	["friends"] = 2,                                    -- show number of friends connected.
	["dps_text"] = 0,                                   -- show a dps meter on panels
	["hps_text"] = 0,                                   -- show a heal meter on panels
	["power"] = 0,                                      -- show your attackpower/spellpower/healpower/rangedattackpower whatever stat is higher gets displayed
	["haste"] = 0,                                      -- show your haste rating on panels.
	["crit"] = 0,                                       -- show your crit rating on panels.
	["avd"] = 0,                                        -- show your current avoidance against the level of the mob your targeting
	["armor"] = 0,                                      -- show your armor value against the level mob you are currently targeting
	["currency"] = 0,                                   -- show your tracked currency on panels
	["hit"] = 0,                                        -- show hit rating
	["mastery"] = 0,                                    -- show mastery rating
	["micromenu"] = 0,                                  -- add a micro menu thought datatext
	["regen"] = 0,                                      -- show mana regeneration

	["battleground"] = true,                            -- enable 3 stats in battleground only that replace stat1,stat2,stat3.
	["time24"] = false,                                 -- set time to 24h format.
	["localtime"] = false,                              -- set time to local time instead of server time.
	["fontsize"] = 12,                                  -- font size for panels.
}

C["chat"] = {
	["enable"] = true,                                  -- blah
	["whispersound"] = true,                            -- play a sound when receiving whisper
	["background"] = false,                             -- enable chat panel background
	["justify"] = false,                                -- justify right chat
	["height"] = 111,                                   -- chat height
	["rightchat"] = true,                               -- enable right chat
	["bubbles"] = true,                                 -- enable bubble skin
}

C["nameplate"] = {
	["enable"] = true,                                  -- enable nice skinned nameplates that fit into tukui
	["showhealth"] = false,				                -- show health text on nameplate
	["enhancethreat"] = false,			                -- threat features based on if your a tank or not
	["combat"] = false,					                -- only show enemy nameplates in-combat.
	["goodcolor"] = {75/255,  175/255, 76/255},	        -- good threat color (tank shows this with threat, everyone else without)
	["badcolor"] = {0.78, 0.25, 0.25},			        -- bad threat color (opposite of above)
	["transitioncolor"] = {218/255, 197/255, 92/255},	-- threat color when gaining threat
}

C["tooltip"] = {
	["enable"] = true,                                  -- true to enable this mod, false to disable
	["hidecombat"] = false,                             -- hide bottom-right tooltip when in combat
	["hidebuttons"] = false,                            -- always hide action bar buttons tooltip.
	["hideuf"] = false,                                 -- hide tooltip on unitframes
	["cursor"] = false,                                 -- tooltip via cursor only
	["showtalent"] = true,                              -- show talent on tooltip
	["talentonlyinparty"] = false,                      -- only show talent in party
	["showitemlvl"] = true,                             -- show item level on tooltip
	["whotargetting"] = true,                           -- show who is targetting the unit (in raid or party)
}

C["merchant"] = {
	["sellgrays"] = true,                               -- automaticly sell grays?
	["autorepair"] = true,                              -- automaticly repair?
	["sellmisc"] = true,                                -- sell defined items automatically
}

C["buffreminder"] = {
	["enable"] = true,                                  -- this is now the new innerfire warning script for all armor/aspect class.
	["sound"] = true,                                   -- enable warning sound notification for reminder.
	["raidbuffreminder"] = true,                        -- enable raidbuffreminder
	["onlyininstance"] = false,                         -- show raidbuffreminder in instance
}

C["panels"] = {
	["infowidth"] = 370,                                -- info frame width
	["bottompanel"] = true,                             -- enable bottom panel
	["toppanel"] = true,                                -- enable top panel
	["location"] = true,                                -- enable location panel
	["blizzardskins"] = true,                           -- enable blizz skin
}

C["misc"] = {
	["autoaccept"] = true,                              -- auto-accept invite from guildmate and friends.
	["autocustomlagtolerance"] = true,                  -- set custom lag tollerance to your latency
	["altpowerbar"] = true,                             -- enable altpowerbar on infoleft
	["threatbar"] = true,                               -- enable threatbar on inforight
	["errorenable"] = true,                             -- true to enable this mod, false to disable
}
