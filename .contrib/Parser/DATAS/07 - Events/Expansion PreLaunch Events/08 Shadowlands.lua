-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
_.WorldEvents =
{
	n(-520, { 	-- Expansion Prelaunch Events
		["icon"] = "Interface\\Icons\\inv_misc_missilesmallcluster_green",
		["g"] = {
			--[[ NOTES
				i(180720) - Darkened Scourgestone - drops from normal ghouls in Icecrown, possibly other zones
				i(183200),	-- Pitch Black Scourgestone - drops from elite Abominations in Icecrown, possibly other zones
			]]--
			tier(9, {	-- Shadowlands
				n(QUESTS, {
					q(60115, {	-- An Urgent Request
						["races"] = HORDE_ONLY,
					}),
					q(60669, {	-- Cause for Distraction
						["maps"] = { 85 },	-- Orgrimmar
						["coord"] = { 49.2, 73.7, 85 },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 169928 },	-- Lor'themar Theron
						["sourceQuest"] = 60115,	-- An Urgent Request
					}),
					q(60670, {	-- Return of the Crusade
						["maps"] = { 85 },	-- Orgrimmar
						["coord"] = { 49.2, 73.7, 85 },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 169928 },	-- Lor'themar Theron
						["sourceQuest"] = 60669,	-- Cause for Distraction
					}),
					q(60725, {	-- Field Reports
						["maps"] = { 85 },	-- Orgrimmar
						["coord"] = { 52.9, 77.3, 85 },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 169878 },	-- Commander Throgg
						["sourceQuest"] = 60670,	-- Return of the Crusade
					}),
					q(60759, {	-- Damned Intruders
						["maps"] = { 10 },	-- Northern Barrens
						["coord"] = { 49.5, 59.4, 10 },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 170084 },	-- Lieutenant Althera
						["sourceQuest"] = 60725,	-- Field Reports
					}),
					q(60761, {	-- Return of the Scourge
						["maps"] = { 10 },	-- Northern Barrens
						["coord"] = { 49.4, 59.3, 10 },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 170084 },	-- Lieutenant Althera
						["sourceQuest"] = 60759,	-- Damned Intruders
					}),
					q(60727, {	-- A Message from Icecrown
						["maps"] = { 85 },	-- Orgrimmar
						["coord"] = { 52.9, 77.2, 85 },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 169878 },	-- Commander Throgg
						["sourceQuest"] = 60761,	-- Return of the Scourge
					}),
					q(61488, {	-- The Banshee's Champion
						["maps"] = { 85 },	-- Orgrimmar
						["coord"] = { 53.0, 77.0, 85 },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 172514 },	-- Light's Hope Messenger
						["sourceQuest"] = 60761,	-- Return of the Scourge
					}),
					q(60004, {	-- A Valiant Effort
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 71.0, 22.0, 118 },
						["races"] = HORDE_ONLY, -- TODO: confirm
						["provider"] = { "n", 168123 },	-- Crusader Renn
						["sourceQuest"] = 60727,	-- A Message from Icecrown
					}),
					q(60169, {	-- Securing the Area
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 71.0, 22.0, 118 },
						["races"] = HORDE_ONLY,	-- TODO: confirm
						["provider"] = { "n", 167045 },	-- Justicar Mariel Trueheart
						["sourceQuest"] = 60727,	-- A Message from Icecrown
					}),
					q(62157, {	-- Scouting from a Safe Distance
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 71.0, 22.0, 118 },
						["races"] = HORDE_ONLY, -- TODO: confirm
						["provider"] = { "n", 168123 },	-- Crusader Renn
						["sourceQuests"] = {
							60004,	-- A Valiant Effort
							60169,	-- Securing the Area
						},
					}),
					q(60827, {	-- Advancing the Effort
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 71.0, 22.0, 118 },
						["races"] = HORDE_ONLY, -- TODO: confirm
						["provider"] = { "n", 168123 },	-- Crusader Renn
						["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
					}),
					q(62262, {	-- Fungal Feeding
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 71.6, 21.0, 118 },
						["races"] = HORDE_ONLY,	-- TODO: confirm
						["provider"] = { "n", 167572 },	-- Crystal Brightspark
						["isDaily"] = true,
						["sourceQuest"] = 60827,	-- Advancing the Effort
					}),
					q(59783, {	-- Cultist Captors
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 66.0, 21.9, 118 },
						["races"] = HORDE_ONLY, -- TODO: confirm
						["provider"] = { "n", 168880 },	-- Sentry Joren
						["sourceQuest"] = 60827,	-- Advancing the Effort
					}),


					-- repeatables below
					q(62401, {	-- Strange Scourgestones
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 71.0, 21.6, 118 },
						["races"] = HORDE_ONLY,	-- TODO: confirm
						["provider"] = { "n", 169718 },	-- Veteran Crusader Aliocha Segard
						["sourceQuest"] = 60004,	-- A Valiant Effort -- TODO: confirm. First noticed after turning this quest in, but may actually be available once you loot your first scourgestone
						["g"] = {
							i(12844),	-- Argent Dawn Valor Token
						},
					}),
					q(62293, {	-- Darkened Scourgestones
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 71.0, 21.6, 118 },
						["races"] = HORDE_ONLY,	-- TODO: confirm
						["provider"] = { "n", 169718 },	-- Veteran Crusader Aliocha Segard
						["repeatable"] = true,
						["sourceQuest"] = 62401,	-- Strange Scourgestones
						["g"] = {
							i(12844),	-- Argent Dawn Valor Token
						},
					}),
					q(62292, {	-- Pitch Black Scourgestones
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 71.0, 21.6, 118 },
						["races"] = HORDE_ONLY,	-- TODO: confirm
						["provider"] = { "n", 169718 },	-- Veteran Crusader Aliocha Segard
						["repeatable"] = true,
						["sourceQuest"] = 62401,	-- Strange Scourgestones
						["g"] = {
							i(12844),	-- Argent Dawn Valor Token
						},
					}),
					--[[
					q(, {	--
						["maps"] = {  },
						["coord"] = {  },
						["races"] = HORDE_ONLY,
						["provider"] = { "n",  },	--
						["sourceQuest"] = ,	--
					}),
					]]--
				}),
				n(RARES, {
					-- TODO: need to add Forgemaster Garfrost and Malywn as confirmed spawns
					n(174054, {	-- Falric
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 50.2, 88.1, 118 },
						["questID"] = 62332, -- first-time kill. TODO: is this a daily? weekly? only-time only? Need more data!
						["g"] = {	-- adding the reward, but uncertain if it's worth adding yet
							i(183200),	-- Pitch Black Scourgestone
						},
					}),
					n(174053, {	-- The Prophet Tharon'ja
						["maps"] = { 118 },	-- Icecrown
						["coord"] = { 80.1, 61.2, 118 },
						["questID"] = 62331,
						["g"] = {	-- adding the reward, but uncertain if it's worth adding yet
							i(183200),	-- Pitch Black Scourgestone
						},
					}),
				}),
				n(VENDORS, {

				}),
			}),
		},
	}),
};