---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_5 }, ["races"] = ALLIANCE_ONLY }, {
	m(AMIRDRASSIL, {
		n(VENDORS, {
			n(216286, {	-- Moon Priestess Lasara
				["coord"] = { 46.5, 70.6, AMIRDRASSIL },
				["sym"] = {
					{"select", "npcID", 50305 },	-- Select Moon Priestess Lasara <Darnassus Quartermaster>
					{"pop"},						-- Discard Header and aquire their children
				},
				["g"] = {
					i(210424, {	-- Darnassian Tabard
						["cost"] = { { "c", DRAGON_SUPPLIES, 250 } },
					}),
					i(210418, {	-- Darnassian Cloak
						["cost"] = { { "c", DRAGON_SUPPLIES, 250 } },
					}),
					i(210415, {	-- Darnassian Moonsilver Spaulders
						["cost"] = { { "c", DRAGON_SUPPLIES, 250 } },
					}),
				},
			}),
			n(216284, {	-- Mythrin'dir
				["coord"] = { 54.1, 60.8, AMIRDRASSIL },
				["g"] = {
					i(211399),	-- Technique: Glyph of the Lunar Chameleon
				},
			}),
		}),
	}),
})));