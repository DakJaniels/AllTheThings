-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
AZEROTHIAN_ARCHIVES = createHeader({
	readable = "Azerothian Archives",
	icon = "Interface\\Icons\\trade_archaeology",
	text = {
		en = [[~GetSpellInfo(419242)]],
	},
});

root(ROOTS.ExpansionFeatures, tier(DF_TIER, bubbleDown({ ["timeline"] = { ADDED_10_2_5 } }, {
	n(AZEROTHIAN_ARCHIVES, {
		["maps"] = {
			THALDRASZUS,
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(19790, {	-- The Archives Called, You Answered
					["sym"] = {{"meta_achievement",
						19685,	-- Tenured Archivist
						19786,	-- When a Rock is Just a Rock
						19791,	-- Goggle Wobble
						19787,	-- Clued In
						19789,	-- Relic Rescuer
						19788,	-- Tome Comber
						19793,	-- Finally At Rest
						19792,	-- Just One More Thing
					}},
					["g"] = {
						title(536),	-- Isles Archivist
					},
				}),
				ach(19787),	-- Clued in
				ach(19793, {	-- Finally At Rest
					i(213134),	-- Hap'he (PET!)
				}),
				ach(19791, {	-- Goggle Wobble
					crit(65404, {	-- Zenata danced with at Igira's Watch
						--["coord"] = { },
					}),
					crit(65405, {	-- Zenata danced with at Dragonskull Island
						["coord"] = { 77.1, 38.4, THE_FORBIDDEN_REACH },
					}),
					crit(65406, {	-- Zenata danced with at Concord Observatory
						--["coord"] = { },
					}),
				}),
				ach(19792, {	-- Just One More Thing
					i(213133),	-- Reese (PET!)
				}),
				ach(19789),	-- Relic Rescuer
				ach(19788, {	-- Tome Comber
					crit(65389, {
						["provider"] = { "i", 213185 },	-- Dusty Centaur Tome
					}),
					crit(65390, {
						["provider"] = { "i", 213175 },	-- Dusty Djaradin Tome
					}),
					crit(65391, {
						["provider"] = { "i", 213188 },	-- Dusty Dracthyr Tome
					}),
					crit(65392, {
						["provider"] = { "i", 213187 },	-- Dusty Drakonid Tome
					}),
					crit(65393, {
						["provider"] = { "i", 213186 },	-- Dusty Niffen Tome
					}),
					crit(65394, {
						["provider"] = { "i", 213190 },	-- Preserved Djaradin Tome
					}),
					crit(65395, {
						["provider"] = { "i", 213189 }, -- Preserved Dragonkin Tome
					}),
					crit(65396, {
						["provider"] = { "i", 13176 },	-- Preserved Isles Tome
					}),
					crit(65397, {
						["provider"] = { "i", 213177 },	-- Immaculate Tome
					}),
				}),
				ach(19786),	-- When a Rock is Just a Rock
			}),
			n(DROPS, {
				i(213389),	-- Ancient Centaur Diary
				i(213025),	-- Ancient Djaradin Bolt
				i(213020),	-- Ancient Drakonid Shovel
				i(213024),	-- Bloody Djaradin Mug
				i(213200),	-- Book of Horoscopes
				i(213365),	-- Carved Cave Crystal
				i(213215),	-- Carved Votive Stone
				i(213021),	-- Corked Drakonid Vial
				i(213359),	-- Cracked Drakonid Staff
				i(212687),	-- Crude Toy Ducky
				i(213357),	-- Crystal Scrying Bowl
				i(212978),	-- Dragon Painter's Palette
				i(213022),	-- Drakonid Blacksmith Hammer
				i(212976),	-- Drakonid Duck Carving
				i(212977),	-- Drakonid Sign Placard
				i(213183),	-- Makeshift Beaded Bracelet
				i(213429),	-- Meticulous Archivist's Appendix
				i(213023),	-- Oil-Drenched Djaradin Torch
				i(205223),	-- Ornamented Centaur Axe
				i(213382),	-- Partial Centaur Hunting Map
				i(212782),	-- Poorly Preserved Relic
				i(213208),	-- Pot of Pickled Ancheevies
				i(212650),	-- Pot of Tattooing Ink
				i(213204),	-- Ruby-Studded Locket
				i(212773),	-- Rusted Locket
				i(213375),	-- Satchel of Buried Valuables
				i(213192),	-- Scratched-Out List of Names
				i(212762),	-- Tarnished Horn Signet
				i(212769),	-- Tattered Wanted Poster
			}),
			n(FACTIONS, {
				faction(FACTION_AZEROTHIAN_ARCHIVES, {
					ach(19685, {	-- Tenured Archiviest
						["minReputation"] = { FACTION_AZEROTHIAN_ARCHIVES, 5 },
					}),
				}),
			}),
			n(QUESTS, {
				q(77325, {	-- To the Archives!
					["provider"] = { "o", 405593 },	-- Azerothian Archives!
					["coord"] = { 46.6, 47.5, VALDRAKKEN },
				}),
				q(77231, {	-- Technoscrying 101
					["sourceQuests"] = { 77325 },	-- To the Archives!
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.6, 31.1, THALDRASZUS },
					["g"] = {
						i(208084),	-- Technoscryers (QI!)
					},
				}),
				q(77166, {	-- A Practical Test
					["sourceQuests"] = { 77231 },	-- Technoscrying 101
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.2, 30.7, THALDRASZUS },
					["g"] = {
						i(202247),	-- Technoscryers (QI!)
					},
				}),
				q(77176, {	-- I Can See Through Time!
					["sourceQuests"] = { 77166 },	-- A Practical Test
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.7, 29.8, THALDRASZUS },
					["g"] = {
						i(202247),	-- Technoscryers (QI!)
					},
				}),
				q(77434, {	-- Technoscrying: Observatory
					["sourceQuests"] = { 77176 },	-- I Can See Through Time!
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.7, 29.8, THALDRASZUS },
				}),
				q(75729, {	-- Attune to the Observer
					["sourceQuests"] = { 77434 },	-- Technoscrying: Observatory
					["provider"] = { "n", 204835 },	-- Zenata
					["coord"] = { 56.3, 43.9, THE_WAKING_SHORES },
					["g"] = {
						i(202247),	-- Technoscryers (QI!)
					},
				}),
				q(75867, {	-- A Link to the Past
					["sourceQuests"] = { 75729 },	-- Attune to the Observer
					["provider"] = { "n", 204835 },	-- Zenata
					["coord"] = { 56.3, 43.9, THE_WAKING_SHORES },
					["g"] = {
						--i(202247),	-- Technoscryers (QI!) (TODO: seems like qi didn't get removed from previous quest?)
					},
				}),
				q(75868, {	-- A Window into the Future
					["sourceQuests"] = { 75867 },	-- A Link to the Past
					["provider"] = { "n", 204835 },	-- Zenata
					["coord"] = { 56.3, 43.9, THE_WAKING_SHORES },
					["g"] = {
						i(205455),	-- Telescope Lens (QI!)
					},
				}),
				q(77267, {	-- Excavation 101
					["sourceQuests"] = { 77325 },	-- To the Archives!
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.5, 31.1, THALDRASZUS },
					["g"] = {
						i(210956),	-- Archivist's Fire Totem (QI!)
					},
				}),
				q(78762, {	-- Your First Find
					["sourceQuests"] = { 77267 },	-- Excavation 101
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.3, 30.2, THALDRASZUS },
				}),
				q(77268, {	-- Hands-On Experience
					["sourceQuests"] = { 78762 },	-- Your First Find
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.3, 30.2, THALDRASZUS },
				}),
				q(77433, {	-- Excavation: Riverbed
					["sourceQuests"] = { 77268 },	-- Hands-On Experience
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.5, 30, THALDRASZUS },
				}),
				q(75493, {	-- Surveying the Riverbed
					["sourceQuests"] = { 77433 },	-- Excavation: Riverbed
					["provider"] = { "n", 204094 },	-- Roska Rocktooth
					["coord"] = { 67.3, 47.5, OHNAHRAN_PLAINS },
					["groups"] = {
						i(210435), -- Archivist's Water Totem
					},
				}),
				q(75518, {	-- The Body on the Banks
					["sourceQuests"] = { 75493 },	-- Surveying the Riverbed
					["provider"] = { "n", 204245 },	-- Ancient Centaur Corpse
					["coord"] = { 67.3, 47.5, OHNAHRAN_PLAINS },
				}),
				q(75603, {	-- Do Rites by Her
					["sourceQuests"] = { 75518 },	-- The Body on the Banks
					["provider"] = { "n", 204643 },	-- Roska Rocktooth
					["coord"] = { 66.4, 46, OHNAHRAN_PLAINS },
				}),
				q(77327, {	-- Nirobin and the Office
					["sourceQuests"] = { 75603 },	-- Do Rites by Her
					["provider"] = { "n", 204643 },	-- Roska Rocktooth
					["coord"] = { 66.4, 46, OHNAHRAN_PLAINS },
				}),
				q(76217, {	-- Living History
					["sourceQuests"] = { 77327 },	-- Nirobin and the Office
					["provider"] = { "n", 205967 },	-- Nirobin
					["coord"] = { 58.4, 36.8, THALDRASZUS },
				}),
				q(76241, {	-- Lab Partners with a Squirrel
					["sourceQuests"] = { 76217 },	-- Living History
					["provider"] = { "n", 205967 },	-- Nirobin
					["coord"] = { 58.4, 36.8, THALDRASZUS },
				}),
				q(76242, {	-- A Research Thesis Worth Publishing
					["sourceQuests"] = { 76241 },	-- Lab Partners with a Squirrel
					["provider"] = { "n", 205975 },	-- Reese
					["coord"] = { 53.5, 47.5, THE_FORBIDDEN_REACH },
				}),
				q(77328, {	-- Back to Headquarters!
					["sourceQuests"] = { 76242 },	-- A Research Thesis Worth Publishing
					["provider"] = { "n", 205967 },	-- Nirobin
					["coord"] = { 58.4, 36.8, THALDRASZUS },
				}),
				q(79223, {	-- Finally, An Archivist!
					["sourceQuests"] = { 77328 },	-- Back to Headquarters!
					["provider"] = { "n", 206107 },	-- Eadweard Dalyngrigge
					["coord"] = { 61.5, 31.2, THALDRASZUS },
					["g"] = {
						i(208451, {	-- Archivist's Buckled Cap
							["provider"] = { "i", 212371 },-- Azerothian Archivist Initiation Token
						}),
					},
				}),
				q(77483, {	-- Technoscrying: Dragonskull Island
					["sourceQuests"] = { 79223 },	-- Finally, An Archivist!
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.5, 31.1, THALDRASZUS },
				}),
				q(76448, {	-- The Fate of Scalecommander Abereth
					["sourceQuests"] = { 77483 },	-- Technoscrying: Dragonskull Island
					["provider"] = { "n", 207311 },	-- Zenata
					["coord"] = { 77.1, 38.4, THE_FORBIDDEN_REACH },
				}),
				q(76557, {	-- Without Honor
					["sourceQuests"] = { 76448 },	-- The Fate of Scalecommander Abereth
					["provider"] = { "n", 207311 },	-- Zenata
					["coord"] = { 77.1, 38.4, THE_FORBIDDEN_REACH },
				}),
				q(77415, {	-- The Hidden Hand
					["sourceQuests"] = { 76557 },	-- Without Honor
					["provider"] = { "n", 207311 },	-- Zenata
					["coord"] = { 77.1, 38.4, THE_FORBIDDEN_REACH },
					["g"] = {
						i(208202), -- Neltharion Agent Instructions (QI!)
					},
				}),
				q(77484, {	-- Technoscrying: Igira's Watch
					["sourceQuests"] = { 79223 },	-- Finally, An Archivist!
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.5, 31.1, THALDRASZUS },
				}),
				q(77486, {	-- Excavation: Gaze of Neltharion
					["sourceQuests"] = { 79223 },	-- Finally, An Archivist!
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.5, 31.1, THALDRASZUS },
				}),
				q(77487, {	-- Excavation: Winglord's Perch
					["sourceQuests"] = { 79223 },	-- Finally, An Archivist!
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.5, 31.1, THALDRASZUS },
				}),
				q(77100, {	-- Surveying the Cliffside
					["sourceQuests"] = { 77487 },	-- Excavation: Winglord's Perch
					["provider"] = { "n", 208362 },	-- Roska Rocktooth
					["coord"] = { 17.2, 16.3, THE_FORBIDDEN_REACH },
					["g"] = {
						i(210778),	-- Archivist's Wind Totem (QI!)
					},
				}),
				q(77151, {	-- The Cache in the Crag
					["sourceQuests"] = { 77100 },	-- Surveying the Cliffside
					["provider"] = { "n", 208402 },	-- Intact Dragonkin Cache
					["coord"] = { 14.0, 14.7, THE_FORBIDDEN_REACH },
				}),
				q(77154, {	-- A Taste of the Past
					["sourceQuests"] = { 77151 },	-- The Cache in the Crag
					["provider"] = { "n", 208362 },	-- Roska Rocktooth
					["coord"] = { 14.0, 14.7, THE_FORBIDDEN_REACH },
				}),
				--
				q(79226, {	-- The Big Dig: Traitor's Rest
					["coord"] = { 61.6, 31.3, THALDRASZUS },
					["maps"] = { THE_AZURE_SPAN },
					["isWeekly"] = true,
					["provider"] = { "n", 112802 },	-- Eadweard Dalyngrigge
					["g"] = {
						currency(2657),	-- Mysterious Fragment
						currency(2819),	-- Archivist Knowledge
					},
				}),
			}),
			n(RARES, {
				n(208029, {	-- Doomshadow
					["coord"] = { 27.75, 46.20, THE_AZURE_SPAN },
					["g"] = {
						i(212645),	-- Clayscale Hornstrider (MOUNT!)
						i(212642),	-- Excavator's Boots
						i(212692),	-- Excavator's Dusky Fedora
						i(212639),	-- Excavator's Glovelettes
						i(212793),	-- Excavator's Pack of Findings
						i(212641),	-- Excavator's Rugged Pants
						i(212640),	-- Excavator's Trusty Satchel
						i(212640),	-- Excavator's Utility Belt
						i(212638),	-- Excavator's Work Shirt
					},
				}),
			}),
			n(VENDORS, {
				n(209192, {	-- Provisioner Aristta
					["coord"] = { 61.4, 31.4, THALDRASZUS },
					["g"] = {
						i(213536, {	-- Priceless Artifact
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 1000 } },
						}),
						i(212635, {	-- Historian's Utility Belt (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 5000 } },
						}),
						i(212634, {	-- Historian's Fingerless Gloves (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 5000 } },
						}),
						i(212637, {	-- Historian's Striders (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 5000 } },
						}),
						i(212636, {	-- Historian's Trousers (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 7000 } },
						}),
						i(212633, {	-- Historian's Fitted Vest (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 7000 } },
						}),
						i(213276, {	-- Archivist's Magnifying Mace (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(213275, {	-- Archivist's Rockpuller (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(213274, {	-- Archivist's Pathfinder (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(212870, {	-- Archivist's Stone Chisel (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208459, {	-- Archivist's Improvised Cudgetl (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208458, {	-- Archivist's Extravagant Lantern (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(212941, {	-- Archivist's "Light Touch" (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208457, {	-- Archivist's Spelunking Torch (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208455, {	-- Archivist's Sturdy Hook (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208454, {	-- Archivist's Mining Pick (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208453, {	-- Archivist's Super Scooper (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208450, {	-- Coiled Archivist's Rope (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208547, {	-- Archivist's Reading Spectacles (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 12000 } },
						}),
						i(208546, {	-- Archivist's Rose-Tinted Glasses (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 12000 } },
						}),
						i(208456, {	-- Archivist's Elegant Bag (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 15000 } },
						}),
						i(212794, {	-- Historian's Hefty Habersack (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 15000 } },
						}),
						i(208452, {	-- Historian's Dapper Cap (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 15000 } },
						}),
						i(192796, {	-- Explorer's Stonehide Packbeast (MOUNT!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 20000 } },
						}),
					},
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, tier(DF_TIER, {
	n(AZEROTHIAN_ARCHIVES, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
		q(79616),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434198)
		q(79664),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434203)
		q(79670),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434928)
		q(79996),	-- After completing 'The Hidden Hand' (questID 77415)
		q(79995),	-- After completing 'A Taste of the Past' (questID 77154)
	})),
}));