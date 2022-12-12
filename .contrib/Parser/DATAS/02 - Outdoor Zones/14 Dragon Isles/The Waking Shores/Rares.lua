---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(DRAGON_ISLES, bubbleDown({ ["timeline"] = TIMELINE_DF_REL }, {
	m(THE_WAKING_SHORES, {
		n(RARES, {
			n(193132, {	-- Amethyzar the Glittering
				["coord"] = { 63.4, 54.8, THE_WAKING_SHORES },
				["questID"] = 73981,
				["g"] = {
					i(200156),	-- Amethyzarite Geode
				},
			}),
			n(187111, {	-- Ancient Hornswog
				["coord"] = { 77.6, 22.2, THE_WAKING_SHORES },
				["questID"] = 72835,
				["g"] = {
					i(200165),	-- Aegis of Scales
					i(196992),	-- Cliffside Wylderdrake: Heavy Horns (DM!)
					i(197403),	-- Renewed Proto-Drake: Club Tail (DM!)
					--[[ Rest is under shared Lv70 Elite Rare Drops
					i(200186),	-- Amberquill Shroud
					i(200442),	-- Basilisk Hide Jerkin
					i(200174),	-- Bonesigil Shoulderguards
					i(196976),	-- Cliffside Wylderdrake: Head Mane (DM!)
					i(197111),	-- Highland Drake: Maned Head
					i(200445),	-- Lucky Hunting Charm
					i(200249),	-- Mage's Chewed Wand
					i(200193),	-- Manafrond Sandals
					i(200232),	-- Raptor Talonglaive
					i(200131),	-- Reclaimed Survivalist's Dagger
					i(200859),	-- Seasoned Hunter's Trophy
					i(200563),	-- Primal Ritual-shell
					i(200195),	-- Thunderscale Legguards --]]
				},
			}),
			n(187945, {	-- Anhydros the Tidetaker
				["coord"] = { 58.7, 40.3, THE_WAKING_SHORES },
				["questID"] = 73865,
				["g"] = {
					--[[ Rest is under shared Lv70 Elite Rare Drops
					i(200186),	-- Amberquill Shroud
					i(200442),	-- Basilisk Hide Jerkin
					i(200174),	-- Bonesigil Shoulderguards
					i(196976),	-- Cliffside Wylderdrake: Head Mane (DM!)
					i(197111),	-- Highland Drake: Maned Head
					i(200445),	-- Lucky Hunting Charm
					i(200249),	-- Mage's Chewed Wand
					i(200193),	-- Manafrond Sandals
					i(200232),	-- Raptor Talonglaive
					i(200131),	-- Reclaimed Survivalist's Dagger
					i(200859),	-- Seasoned Hunter's Trophy
					i(200563),	-- Primal Ritual-shell
					i(200195),	-- Thunderscale Legguards --]]
				},
			}),
			n(193135, {	-- Azra's Prized Peony
				["coord"] = { 54.9, 71.1, THE_WAKING_SHORES },
				-- ["questID"] = 69839,
				["g"] = {
					i(200259),	-- Forest Dweller's Shield
					i(197398),	-- Renewed Proto-Drake: Snub Snout (DM!)
					i(197121),	-- Highland Drake: Tan Horns (DM!)
				},
			}),
			n(193177, {	-- Beakers
				["questID"] = 73902,
				["coords"] = {
					{ 27.8, 78.8, THE_WAKING_SHORES },
					{ 30.2, 78.2, THE_WAKING_SHORES },
				},
			}),
			n(192738, {	-- Brundin the Dragonbane <Qalashi War Party>
				["description"] = "Travelling.",
				["coord"] = { 48.4, 66.1, THE_WAKING_SHORES },
				["questID"] = 73890,
				["g"] = {
					i(200857),	-- Talisman of Sargha (TOY!)
					--[[ Rest is under shared Lv70 Elite Rare Drops
					i(200186),	-- Amberquill Shroud
					i(200442),	-- Basilisk Hide Jerkin
					i(200174),	-- Bonesigil Shoulderguards
					i(196976),	-- Cliffside Wylderdrake: Head Mane (DM!)
					i(197111),	-- Highland Drake: Maned Head
					i(200445),	-- Lucky Hunting Charm
					i(200249),	-- Mage's Chewed Wand
					i(200193),	-- Manafrond Sandals
					i(200232),	-- Raptor Talonglaive
					i(200131),	-- Reclaimed Survivalist's Dagger
					i(200859),	-- Seasoned Hunter's Trophy
					i(200563),	-- Primal Ritual-shell
					i(200195),	-- Thunderscale Legguards --]]
				},
			}),
			n(193198, {	-- Captain Lancer
				["coord"] = { 26.9, 76.1, THE_WAKING_SHORES },
				["questID"] = 73075,
				["isDaily"] = true,
				["g"] = {
					i(200286),	-- Dragonbane Lance
					i(200757),	-- Qalashi War-Helm
				},
			}),
			n(191611, {	-- Dragonhunter Igordan
				["coord"] = { 64.3, 33.0, THE_WAKING_SHORES },
				["questID"] = 72838,
				["g"] = {
					i(197019),	-- Cliffside Wylderdrake: Blunt Spiked Tail (DM!)
					i(197005),	-- Cliffside Wylderdrake: Horned Nose (DM!)
					i(200757),	-- Qalashi War-Helm
				},
			}),
			n(193217, {	-- Drakewing
				["coord"] = { 72.8, 47.0, THE_WAKING_SHORES },
				-- ["questID"] = 70177, ??
				["g"] = {
					i(200219),	-- Dangerous Drapery
				},
			}),
			n(193134, {	-- Enkine the Voracious
				["coords"] = {
					{ 40.3, 64.9, THE_WAKING_SHORES },	-- The Rare
					{ 22.0, 64.9, THE_WAKING_SHORES },	-- Fishing Spot
				},
				["description"] = "Can only be summoned by fishing with the Lava Spices buff active at 22 65 in the Waking Shores. Lava Spices can be obtained by killing Restless Lava, Lavaslurpers and Basalt Shells along the lava river leading to the rare.",
				["cost"] = {{"i",201092,1}},	-- Lava Spices
				["questID"] = 73072,
				["isDaily"] = true,
				["g"] = {
					i(200217),	-- Blazing Essence
					i(200247),	-- Inextinguishable Gavel
					i(200252),	-- Molten Flak Cannon
					i(200563),	-- Primal Ritual Shell
					i(200167),	-- Regurgitated Stone Handaxe
					i(200163),	-- Ring of Embers
					i(200133),	-- Volcanic Chakram
				},
			}),
			n(195915, {	-- Firava the Rekindler
				["coord"] = { 56.9, 25.3, THE_WAKING_SHORES },
				["questID"] = 72839,
				["g"] = {
					i(200217),	-- Blazing Essence
					i(197135),	-- Highland Drake: Toothy Mouth (DM!)
					i(200247),	-- Inextinguishable Gavel
					i(200133),	-- Volcanic Chakram
					-- is part of the DF>Global Rare Loottable
				},
			}),
			n(193154, {	-- Forgotten Gryphon
				["coord"] = { 33.1, 76.3, THE_WAKING_SHORES },
				["questID"] = 73073,
				["isDaily"] = true,
				["g"] = {
					i(200858),	-- Plume of the Forgotten
				},
			}),
			n(193226, {	-- Gorjo the Crab Shackler
				["crs"] = { 193228 },	-- Snappy
				["coord"] = { 78.6, 50.0, THE_WAKING_SHORES },
				-- ["questID"] = 69874,
				["g"] = {
					i(200281),	-- Gorjo's Riding Crop
				},
			}),
			n(196056, {	-- Gushgut the Beaksinker
				-- ["coord"] = { X, Y, THE_WAKING_SHORES },
				-- ["questID"] = 70718,
				-- ["g"] = {

				-- },
			}),
			n(186200, {	-- Harkyn Grymstone
				["crs"] = {
					186201, -- Groth
					186203,	-- Snee
					186202,	-- Voll
				},
				["coord"] = { 42.1, 39.5, THE_WAKING_SHORES },
				-- ["questID"] = ,
				-- ["g"] = {

				-- },
			}),
			n(193263, {	-- Helmet Missingway
				["coord"] = { 43.4, 73.6, THE_WAKING_SHORES },
				["questID"] = 73880,
				-- ["g"] = {

				-- },
			}),
			n(187209, {	-- Klozicc the Ascended
				["coord"] = { 54.7, 82.3, THE_WAKING_SHORES },
				["questID"] = 72841,
				["g"] = {
					i(197023),	-- Cliffside Wylderdrake: Maned Neck (DM!)
					i(200246),	-- Lost Delving Lamp
					i(200198),	-- Primalist Prison (TOY!)
					i(200254),	-- Totemic Cinch
				},
			}),
			n(193266, {	-- Lepidoralia the Resplendent
				-- ["coord"] = { X, Y, THE_WAKING_SHORES },
				-- ["questID"] = 69891,
				-- ["g"] = {

				-- },
			}),
			n(186827, {	-- Magmaton
				["coord"] = { 40.0, 64.5, THE_WAKING_SHORES },
				["questID"] = 74010,
				["g"] = {
					i(197149),	-- Highland Drake: Club Tail (DM!)
				},
			}),
			n(193152, {	-- Massive Magmashell
				["coord"] = { 21.7, 76.2, THE_WAKING_SHORES },
				["questID"] = 74012,
				["g"] = {
					i(200192),	-- Handheld Geyser
				},
			}),
			n(190718, {	-- Monsoo, The Boiling Rage
				["coord"] = { 46.8, 57.3, THE_WAKING_SHORES },
				-- ["questID"] = ,
				-- ["g"] = {

				-- },
			}),
			n(193256, {	-- Nulltheria the Void Gazer
				["coord"] = { 56.7, 45.6, THE_WAKING_SHORES },
				["questID"] = 73888,
				["g"] = {
					i(200236),	-- Memory of Nulltheria
				},
			}),
			n(193118, {	-- O'nank Shorescour
				["coord"] = { 82.2, 49.4, THE_WAKING_SHORES },
				-- ["questID"] = 70983,
				-- ["g"] = {

				-- },
			}),
			n(184853, {	-- Primal Scythid Queen
				["coord"] = { 81.3, 37.7, THE_WAKING_SHORES },
				["questID"] = 72843,
				["g"] = {
					-- is part of the DF>Global Rare Loottable
				},
			}),
			n(193710, {	-- Seereel, the Spring <Lunker>
				["coord"] = { 66.0, 74.8, THE_WAKING_SHORES },
				["description"] = "Chance to spawn after using 5 Ominous Conches at the Lurker Sighting.",
			--	["questID"] = 72850,
				["isDaily"] = true,
				["g"] = {
					i(197001),	-- Cliffside Wylderdrake: Finned Cheek
					i(197098),	-- Highland Drake: Finned Back
					i(200164),	-- iceloop
					i(200086),	-- Khaz'gorite-infused Resin
					i(200245),	-- leviathan-lure
					i(200563),	-- Primal Ritual Shell
					i(200187),	-- Rod of Glacial Force
					i(200552),	-- Torrent Caller's Shell
				},
			}),
			n(193271, {	-- Shadeslash Trakken
				["description"] = "Cave Entrance: 48.6, 74.3. Have to touch Focus, Globe and Telescope to spawn.",
				["coord"] = { 47.3, 73.9, THE_WAKING_SHORES },
				["questID"] = 74076,
				["g"] = {
					i(200152),	-- Gleaming Blade of Insight
				},
			}),
			n(193181, {	-- Skewersnout <Raypier of the Deep>
				["coord"] = { 39.6, 41.2, THE_WAKING_SHORES },
				-- ["questID"] = ,
				["g"] = {
					i(200132),	-- Skewer's Snout
					i(200552),	-- Torrent Caller's Shell
					i(197589),	-- Windborne Velocidrake: Large Head Fin (DM!)
				},
			}),
			n(193175, {	-- Slurpo, the Incredible Snail
				-- ["coord"] = { X, Y, THE_WAKING_SHORES },
				-- ["questID"] = 72126,
				-- ["g"] = {

				-- },
			}),
			n(193120, {	-- Smogswog the Firebreather
				["coord"] = { 69.0, 64.8, THE_WAKING_SHORES },
				-- ["questID"] = 69668,
				["g"] = {
					i(200209),	-- Firebreather's Cowl
				},
			}),
			n(193634, {	-- Swog'ranka <Lunker>
				["coord"] = { 66.0, 74.8, THE_WAKING_SHORES },
				["description"] = "Chance to spawn after using 5 Ominous Conches at the Lurker Sighting.",
				["questID"] = 74084,
				["isDaily"] = true,
				["g"] = {
					i(197001),	-- Cliffside Wylderdrake: Finned Cheek
					i(200086),	-- Khaz'gorite-infused Resin
					i(200552),	-- Torrent Caller's Shell
					i(200448),	-- Abyssal Ward
					i(200151),	-- Seamist Blade
					i(197589),	-- Windborne Velocidrake: Large Head Fin
					-- is part of the DF>Global Rare Loottable
				},
			}),
			n(193171, {	-- Terillod the Devout
				["coord"] = { 60.6, 82.9, THE_WAKING_SHORES },
				["questID"] = 72850,
				["g"] = {
					i(200208),	-- Cloud Coalescing Handwraps
					i(200172),	-- Zephyrdance Signet
				},
			}),
			n(193148, {	-- Thunderous Matriarch
				["coord"] = { 45.4, 35.6, THE_WAKING_SHORES },
				-- ["questID"] = 73889, -- confirm
				["g"] = {
					-- is part of the DF>Global Rare Loottable
				},
			}),
		}),
	}),
})));