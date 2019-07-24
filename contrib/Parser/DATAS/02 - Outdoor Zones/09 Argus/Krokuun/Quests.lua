---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------
_.Zones =
{
	m(905, { 	-- Argus
		m(830, {	-- Krokuun
			n(-17, {	-- Quests
				["groups"] = {
					ach(12066, {	-- You Are Now Prepared!
						crit(1, {	-- The Assault Begings
							q(47221, {	-- The Hand of Fate
								["races"] = ALLIANCE_ONLY,
								["description"] = "Given by Auto Accept after completing Broken Shore scenario.  May have to log out.",
								["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
							}),
							q(47222, {	-- Two If By Sea
								["qg"] = 121754,	-- Vereesa Windrunner
								["races"] = ALLIANCE_ONLY,
								["sourceQuests"] = { 47221 },	-- The Hand of Fate
							}),
							q(47835, {	-- The Hand of Fate
								["races"] = HORDE_ONLY,
								["description"] = "Given by Auto Accept after completing Broken Shore scenario.  May have to log out.",
								["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
							}),
							q(47867, {	-- Two If By Sea
								["qg"] = 122065,	-- Lady Liadrin
								["races"] = HORDE_ONLY,
								["sourceQuests"] = { 47221 },	-- The Hand of Fate
							}),
							q(47223, {	-- Light's Exodus
								["qg"] = 121756,	-- Vindicator Boros
								["sourceQuests"] = { 47222 },	-- Two If By Sea
							}),
							q(47224, {	-- The Vidicaar
								["qg"] = 120977,	-- Prophet Velen
								["sourceQuests"] = { 47223 },	-- Light's Exodus
							}),
							q(48440, {	-- Into the Night
								["qg"] = 120977,	-- Prophet Velen
								["sourceQuests"] = { 47224 },	-- The Vidicaar
							}),
							q(46938, {	-- Alone in the Abyss
								["qg"] = 126307,	-- Prophet Velen
								["sourceQuests"] = { 48440 },	-- Into the Night
							}),
							q(47589, {	-- Righteous Fury
								["qg"] = 119543,	-- Prophet Velen
								["sourceQuests"] = { 46938 },	-- Alone in the Abyss
							}),
							q(46297, {	-- Overwhelming Power
								["groups"] = {
									i(152695),	-- Crest of the Grand Army
									i(152690),	-- Darkfall Arcanum
									i(152692),	-- Devastator Anchor Crystal
									i(152691),	-- Doomcaller Heart
									i(152694),	-- Felbound Drudge's Sorrow
									i(153421),	-- Grinning Vilefiend Skull
									i(152696),	-- Manacle of Dominance
									i(152697),	-- Mark of Defiant Survival
									i(152715),	-- Scarwing Talon
									i(152693),	-- Volatile Devastator Round
								},
								["qg"] = 119535,	-- Illidan Stormrage
								["sourceQuests"] = { 46938 },	-- Alone in the Abyss
							}),
							q(48483, {	-- A Stranger's Plea
								["qg"] = 126239,	-- Chieftain Hatuun
								["sourceQuests"] = { 46938 },	-- Alone in the Abyss
							}),
							q(47627, {	-- Vengeance
								["qg"] = 123148,	-- Illidan Stormrage
								["sourceQuests"] = { 47589, 46297, 48483 },	-- Righteous Fury / Overwhelming Power / A Stranger's Plea
							}),
							q(47641, {	-- Sign of Resistance
								["qg"] = 119543,	-- Prophet Velen
								["sourceQuests"] = { 47627 },	-- Vengeance
							}),
							q(46732, {	-- The Prophet's Gambit
								["qg"] = 121345,	-- Prophet Velen
								["sourceQuests"] = { 47641 },	-- Sign of Resistance
							}),
							q(46816, {	-- Rendezvous
								--[[
								["groups"] = {
									{
										["spellID"] = 252201,	-- Lightforged Beacon: Krokul Hovel
										["questID"] = 46816,	-- Rendezvous
									},
								},
								--]]
								["qg"] = 120529,	-- High Exarch Turalyon
								["sourceQuests"] = { 46732 },	-- The Prophet's Gambit
							}),
							q(46839, {	-- From Darkness
								["qg"] = 120529,	-- High Exarch Turalyon
								["sourceQuests"] = { 46816 },	-- Rendezvous
							}),
							q(46840, {	-- Prisoners No More
								["qg"] = 120760,	-- High Exarch Turalyon
								["sourceQuests"] = { 46839 },	-- From Darkness
							}),
							q(46841, {	-- Threat Reduction
								["qg"] = 120760,	-- High Exarch Turalyon
								["sourceQuests"] = { 46839 },	-- From Darkness
							}),
							q(46842, {	-- A Strike at the Heart
								["qg"] = 120953,	-- High Exarch Turalyon
								["sourceQuests"] = { 46840, 46841 },	-- Prisoners No More / Threat Reduction
							}),
							q(46843, {	-- Return to the Vindicaar
								["qg"] = 120738,	-- High Exarch Turalyon
								["sourceQuests"] = { 46842 },	-- A Strike at the Heart
							}),
							q(48500, {	-- A Moment of Respite
								["qg"] = 126307,	-- Prophet Velen
								["sourceQuests"] = { 46843 },	-- Return to the Vindicaar
							}),
							q(47431, {	-- Gathering Light
								["qg"] = 122378,	-- High Exarch Turalyon
								["sourceQuests"] = { 48500 },	-- A Moment of Respite
							}),
							q(46213, {	-- Crystals Not Included
								["qg"] = 121519,	-- Captain Fareeya
								["sourceQuests"] = { 47431 },	-- Gathering Light
							}),
							q(40238, {	-- A Grim Equation
								["qg"] = 121521,	-- Grand Vindicator Sorvos
								["sourceQuests"] = { 47431 },	-- Gathering Light
							}),
							q(47541, {	-- The Best Prevention
								["qg"] = 121520,	-- Grand Lector Enaara
								["sourceQuests"] = { 46213, 40238 },	-- Crystals Not Included / A Grim Equation
							}),
							q(47508, {	-- Fire at Will
								["qg"] = 121578,	-- Archmage Y'mera
								["sourceQuests"] = { 47541 },	-- The Best Prevention
							}),
							q(47771, {	-- Locating the Longshot
								["qg"] = 121578,	-- Archmage Y'mera
								["sourceQuests"] = { 47508 },	-- Fire at Will
							}),
							q(47526, {	-- Bringing the Big Guns
								["qg"] = 121517,	-- Baraat the Longshot
								["sourceQuests"] = { 47771 },	-- Locating the Longshot
							}),
							q(47754, {	-- Lightly Roasted
								["qg"] = 124906,	-- Image of Grand Artificer Romuul
								["sourceQuests"] = { 47526 },	-- Bringing the Big Guns
							}),
							q(47652, {	-- The Light Mother
								["qg"] = 122621,	-- High Exarch Turalyon
								["sourceQuests"] = { 47754 },	-- Lightly Roasted
							}),
							q(47653, {	-- Light's Return
								["qg"] = 122621,	-- High Exarch Turalyon
								["sourceQuests"] = { 47652 },	-- The Light Mother
							}),
							q(47743, {	-- The Child of Light and Shadow
								["qg"] = 122378,	-- High Exarch Turalyon
								["sourceQuests"] = { 47653 },	-- Light's Return
							}),
							q(49143, {	-- Essence of the Light Mother
								["qg"] = 126307,	-- Prophet Velen
								["sourceQuests"] = { 47743 },	-- The Child of Light and Shadow
							}),
							q(47287, {	-- The Vindicaar Matrix Core
								["qg"] = 121263,	-- Grand Artificer Romuul
								["sourceQuests"] = { 49143 },	-- Essence of the Light Mother
							}),
							q(48559, {	-- An Offering of Light
								["qg"] = 126307,	-- Prophet Velen
								["sourceQuests"] = { 47287 },	-- The Vindicaar Matrix Core
							}),
							q(48199, {	-- The Burning Heart
								["qg"] = 126307,	-- Prophet Velen
								["sourceQuests"] = { 48559 },	-- An Offering of Light
							}),
							q(48200, {	-- Securing a Foothold
								["qg"] = 126954,	-- High Exarch Turalyon
								["sourceQuests"] = { 48199 },	-- The Burning Heart
							}),
							q(48201, {	-- Reinforce Light's Purchase
								["qg"] = 126954,	-- High Exarch Turalyon
								["sourceQuests"] = { 48200 },	-- Securing a Foothold
							}),
							q(48202, {	-- Reinforce the Veiled Den
								["qg"] = 126954,	-- High Exarch Turalyon
								["sourceQuests"] = { 47473 },	-- Sizing Up the Opposition
							}),
						}),
					}),
					n(-168, {	-- Other Quests
						["groups"] = {
							q(49014, {	-- The Burning Throne
								["qg"] = 124312,	-- High Exarch Turalyon
								["sourceQuests"] = { 48559 },	-- An Oferring of Light
							}),
							q(49015, {	-- Antorus, the Burning Throne: The Death of a Titan
								["groups"] = {
									i(152984),	-- Boon of the Pantheon
									i(152626),	-- Insignia of the Grand Army
								},
								["qg"] = 120533,	-- Prophet Velen
								["sourceQuests"] = { 49014 },	-- The Burning Throne
							}),
							spell(253365, {	-- Krokuun Equipment
								q(48460, {	-- The Wranglers [Breadcrumb - Required]
									["qg"] = 119388,	-- Chieftain Hatuun
									["sourceQuests"] = { 48199 },	-- The Burning Heart
								}),
								q(47967, {	-- An Argus Roper
									["qg"] = 126160,	-- Lead Rider Jerek
									["sourceQuests"] = { 48460 },	-- The Wranglers [Breadcrumb - Required]
								}),
								q(48455, {	-- Duskcloak Problem
									["qg"] = 126160,	-- Lead Rider Jerek
									["sourceQuests"] = { 48460 },	-- The Wranglers [Breadcrumb - Required]
								}),
								q(48453, {	-- Strike Back
									["qg"] = 126160,	-- Lead Rider Jerek
									["sourceQuests"] = { 48460 },	-- The Wranglers [Breadcrumb - Required]
								}),
								q(48544, {	-- Woah, Nelly
									["qg"] = 126160,	-- Lead Rider Jerek
									["sourceQuests"] = { 47967, 48455, 48453 },	-- An Argus Roper / Duskcloak Problem / Strike Back
								}),
								q(48441, {	-- Remnants of Darkfall Ridge
									["qg"] = 119388,	-- Chieftain Hatuun
									["sourceQuests"] = { 48544 },	-- Woah, Nelly
								}),
								q(48442, {	-- Nath'raxas Hold: Preparations
									["qg"] = 119388,	-- Chieftain Hatuun
									["sourceQuests"] = { 48441 },	-- Remnants of Darkfall Ridge
								}),
								q(48910, {	-- Supplying Krokuun
									["qg"] = 119388,	-- Chieftain Hatuun
									["repeatable"] = true,
									["sourceQuests"] = { 48442 },	-- Nath'raxas Hold: Preparations
									["groups"] = {
										i(152095),	-- Krokul Ridgestalker
									},
								}),
								q(48443, {	-- Nath'raxas Hold: Rescue Mission
									["qg"] = 119388,	-- Chieftain Hatuun
									["sourceQuests"] = { 48910 },	-- Supplying Krokuun
								}),
								q(48634, {	-- Further Supplying Krokuun
									["qg"] = 119388,	-- Chieftain Hatuun
									["repeatable"] = true,
									["sourceQuests"] = { 48443 },	-- Nath'raxas Hold: Rescue Mission
									["groups"] = {
										i(152095),	-- Krokul Ridgestalker
									},
								}),
							}),
							{	-- Ascending Alchemy
								["questID"] = 48016,
								["qg"] = 125346,	-- Alchemist Funen
								["coord"] = { 56.2, 66.8 },
								["groups"] = {
									i(151706),	-- Recipe: Astral Alchemist Stone (Rank 1)
								},
								["requireSkill"] = 171,	-- Alchemy
							},
							{	-- Limited Supplies
								["questID"] = 48002,
								["qg"] = 125346,	-- Alchemist Funen
								["coord"] = { 56.2, 66.8 },
								["groups"] = {
									i(151657),	-- Recipe: Lightblood Elixir (Rank 1)
								},
								["requireSkill"] = 171,	-- Alchemy
							},
							{	-- Tracking the Trackers
								["questID"] = 48013,
								["qg"] = 125346,	-- Alchemist Funen
								["coord"] = { 56.2, 66.8 },
								["groups"] = {
									i(151703),	-- Recipe: Tears of the Naaru (Rank 1)
								},
								["requireSkill"] = 171,	-- Alchemy
							},
						},
					}),
				},
				["description"] = "\nThis quest ends in Krokuun after you finish |cFFFFD700Seat of the Triumvirate|r dungeon quest\n",
			}),
		}),
	}),
};