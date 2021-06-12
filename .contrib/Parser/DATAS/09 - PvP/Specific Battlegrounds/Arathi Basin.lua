-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

_.PVP =
{
	n(-304, {	-- Battlegrounds
		m(93 , {	-- Arathi Basin
			["maps"] = {
				ARATHI_HIGHLANDS,
				837,	-- Arathi Basin
				844,	-- Arathi Basin
				1383,	-- Arathi Basin
				1366,	-- Arathi Basin (BG)
			},
			["achievementID"] = 154,	-- Arathi Basin Victory
			["description"] = "Arathi Basin is a 15v15 battleground located in Arathi Highlands. Players fight over five bases (Stables, Mines, Blacksmith, Lumber Mill, and Farm) which reward teams with resources. The more bases a team controls, the faster they accumulate resources. A team with all five bases captured will gain 30 resources per second.\n\nThe game is won when one team reaches 1,600 resources. The most common way of winning is to hold three bases and defend, with the Blacksmith being a key base.",
			["g"] = bubbleDown({["u"] = PLAYER_VS_PLAYER}, {
				faction(510, {	-- The Defilers
					["crs"] = { 19905 },	-- The Black Bride <Arathi Basin Battlemaster>
					["races"] = HORDE_ONLY,
					["icon"] = "Interface\\Icons\\spell_shadow_psychichorrors",
					["g"] = {
						ach(710), 	-- The Defiler
						n(QUESTS, {
							q(8265, {	-- Defiler's Advanced Care Package
								["provider"] = { "n", 15126 },	-- Rutherford Twing
								["lvl"] = 45,
								["races"] = HORDE_ONLY,
								["minReputation"] = { 510, FRIENDLY },
							}),
							q(8263, {	-- Defiler's Basic Care Package
								["provider"] = { "n", 15126 },	-- Rutherford Twing
								["lvl"] = 25,
								["races"] = HORDE_ONLY,
								["minReputation"] = { 510, FRIENDLY },
							}),
							q(8264, {	-- Defiler's Standard Care Package
								["provider"] = { "n", 15126 },	-- Rutherford Twing
								["lvl"] = 35,
								["races"] = HORDE_ONLY,
								["minReputation"] = { 510, FRIENDLY },
							}),
							q(8169, {	-- The Battle for Arathi Basin!
								["provider"] = { "n", 15021 },	-- Deathmaster Dwire
								["races"] = HORDE_ONLY,
								["u"] = REMOVED_FROM_GAME,
							}),
							q(8170, {	-- The Battle for Arathi Basin!
								["provider"] = { "n", 15021 },	-- Deathmaster Dwire
								["races"] = HORDE_ONLY,
								["u"] = REMOVED_FROM_GAME,
							}),
							q(8171, {	-- The Battle for Arathi Basin!
								["provider"] = { "n", 15021 },	-- Deathmaster Dwire
								["races"] = HORDE_ONLY,
								["u"] = REMOVED_FROM_GAME,
							}),
						}),
						n(VENDORS, {
							--[[ -- Listed under Classic PvP & Arathi Outdoor
							n(15126, {	-- Rutherford Twing
								["itemID"] = 137642,	-- Mark of Honor
								["races"] = HORDE_ONLY,	-- to hide it in Mark of Honor list
								["coord"] = { 68.4, 30.6, ARATHI_HIGHLANDS },
								["g"] = {
									i(20176),	-- Defiler's Epaulets
									i(20163),	-- Defiler's Cloth Girdle
									i(20164),	-- Defiler's Cloth Girdle
									i(20165),	-- Defiler's Cloth Girdle
									i(20166),	-- Defiler's Cloth Girdle
									i(20159),	-- Defiler's Cloth Boots
									i(20160),	-- Defiler's Cloth Boots
									i(20161),	-- Defiler's Cloth Boots
									i(20162),	-- Defiler's Cloth Boots
									i(20194),	-- Defiler's Leather Shoulders
									i(20190),	-- Defiler's Leather Girdle
									i(20191),	-- Defiler's Leather Girdle
									i(20192),	-- Defiler's Leather Girdle
									i(20193),	-- Defiler's Leather Girdle
									i(20186),	-- Defiler's Leather Boots
									i(20187),	-- Defiler's Leather Boots
									i(20188),	-- Defiler's Leather Boots
									i(20189),	-- Defiler's Leather Boots
									i(20175),	-- Defiler's Lizardhide Shoulders
									i(20171),	-- Defiler's Lizardhide Girdle
									i(20172),	-- Defiler's Lizardhide Girdle
									i(20173),	-- Defiler's Lizardhide Girdle
									i(20174),	-- Defiler's Lizardhide Girdle
									i(20167),	-- Defiler's Lizardhide Boots
									i(20168),	-- Defiler's Lizardhide Boots
									i(20169),	-- Defiler's Lizardhide Boots
									i(20170),	-- Defiler's Lizardhide Boots
									i(20158),	-- Defiler's Chain Pauldrons
									i(20150),	-- Defiler's Chain Girdle
									i(20151),	-- Defiler's Chain Girdle
									i(20152),	-- Defiler's Chain Girdle
									i(20153),	-- Defiler's Chain Girdle
									i(20154),	-- Defiler's Chain Greaves
									i(20155),	-- Defiler's Chain Greaves
									i(20156),	-- Defiler's Chain Greaves
									i(20157),	-- Defiler's Chain Greaves
									i(20203),	-- Defiler's Mail Pauldrons
									i(20195),	-- Defiler's Mail Girdle
									i(20196),	-- Defiler's Mail Girdle
									i(20197),	-- Defiler's Mail Girdle
									i(20198),	-- Defiler's Mail Girdle
									i(20199),	-- Defiler's Mail Greaves
									i(20200),	-- Defiler's Mail Greaves
									i(20201),	-- Defiler's Mail Greaves
									i(20202),	-- Defiler's Mail Greaves
									i(20184, {	-- Defiler's Lamellar Spaulders
										["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
									}),
									i(20177, {	-- Defiler's Lamellar Girdle
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20178, {	-- Defiler's Lamellar Girdle
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20179, {	-- Defiler's Lamellar Girdle
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20180, {	-- Defiler's Lamellar Girdle
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20181, {	-- Defiler's Lamellar Greaves
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20182, {	-- Defiler's Lamellar Greaves
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20183, {	-- Defiler's Lamellar Greaves
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20185, {	-- Defiler's Lamellar Greaves
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20212, {	-- Defiler's Plate Spaulders
										["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
									}),
									i(20204, {	-- Defiler's Plate Girdle
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20205, {	-- Defiler's Plate Girdle
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20206, {	-- Defiler's Plate Girdle
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20207, {	-- Defiler's Plate Girdle
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20208, {	-- Defiler's Plate Greaves
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20209, {	-- Defiler's Plate Greaves
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20210, {	-- Defiler's Plate Greaves
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20211, { 	-- Defiler's Plate Greaves
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(20220, {	-- Ironbark Staff
										["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
									}),
									i(20214, {	-- Mindfang
										["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
									}),
									i(20131, {	-- Battle Tabard of the Defilers
										["cost"] = { { "i", 137642, 10 } },	-- 10x Mark of Honor
									}),
									i(20068, {	-- Deathguard's Cloak
										["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
									}),
									i(20072, {	-- Defiler's Talisman
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(21115, {	-- Defiler's Talisman
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(21116, {	-- Defiler's Talisman
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
									i(21120, {	-- Defiler's Talisman
										["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
									}),
								},
							}),
							--]]
						}),
					},
				}),
				faction(509, {	-- The League of Arathor
					["crs"] = { 30231 },	-- Radulf Leder <Arathi Basin Battlemaster>
					["races"] = ALLIANCE_ONLY,
					["icon"] = "Interface\\Icons\\ability_warrior_rallyingcry",
					["g"] = {
						ach(711), 	-- Knight of Arathor
						n(QUESTS, {
							q(8262, {	-- Arathor Advanced Care Package
								["provider"] = { "n", 15127 },	-- Samuel Hawke
								["lvl"] = 45,
								["races"] = ALLIANCE_ONLY,
								["minReputation"] = { 509, FRIENDLY },
							}),
							q(8260, {	-- Arathor Basic Care Package
								["provider"] = { "n", 15127 },	-- Samuel Hawke
								["lvl"] = 25,
								["races"] = ALLIANCE_ONLY,
								["minReputation"] = { 509, FRIENDLY },
							}),
							q(8261, {	-- Arathor Standard Care Package
								["provider"] = { "n", 15127 },	-- Samuel Hawke
								["lvl"] = 35,
								["races"] = ALLIANCE_ONLY,
								["minReputation"] = { 509, FRIENDLY },
							}),
							q(8166, {	-- The Battle for Arathi Basin!
								["provider"] = { "n", 14983 },	-- Field Marshal Oslight
								["races"] = ALLIANCE_ONLY,
								["u"] = REMOVED_FROM_GAME,
							}),
							q(8167, {	-- The Battle for Arathi Basin!
								["provider"] = { "n", 14983 },	-- Field Marshal Oslight
								["races"] = ALLIANCE_ONLY,
								["u"] = REMOVED_FROM_GAME,
							}),
							q(8168, {	-- The Battle for Arathi Basin!
								["provider"] = { "n", 14983 },	-- Field Marshal Oslight
								["races"] = ALLIANCE_ONLY,
								["u"] = REMOVED_FROM_GAME,
							}),
						}),
						n(VENDORS, {
							--[[ -- Listed under Classic PvP & Arathi Outdoor
							n(15127, {	-- Samuel Hawke
								["itemID"] = 137642,	-- Mark of Honor
								["races"] = ALLIANCE_ONLY,	-- to hide it in Mark of Honor list
								["coord"] = { 40.2, 46.4, ARATHI_HIGHLANDS },
								["g"] = {
									i(20061),	-- Highlander's Epaulets
									i(20047),	-- Highlander's Cloth Girdle
									i(20097),	-- Highlander's Cloth Girdle
									i(20098),	-- Highlander's Cloth Girdle
									i(20099),	-- Highlander's Cloth Girdle
									i(20054),	-- Highlander's Cloth Boots
									i(20094),	-- Highlander's Cloth Boots
									i(20095),	-- Highlander's Cloth Boots
									i(20096),	-- Highlander's Cloth Boots
									i(20059),	-- Highlander's Leather Shoulders
									i(20045),	-- Highlander's Leather Girdle
									i(20115),	-- Highlander's Leather Girdle
									i(20116),	-- Highlander's Leather Girdle
									i(20117),	-- Highlander's Leather Girdle
									i(20052),	-- Highlander's Leather Boots
									i(20112),	-- Highlander's Leather Boots
									i(20113),	-- Highlander's Leather Boots
									i(20114),	-- Highlander's Leather Boots
									i(20060),	-- Highlander's Lizardhide Shoulders
									i(20046),	-- Highlander's Lizardhide Girdle
									i(20103),	-- Highlander's Lizardhide Girdle
									i(20104),	-- Highlander's Lizardhide Girdle
									i(20105),	-- Highlander's Lizardhide Girdle
									i(20053),	-- Highlander's Lizardhide Boots
									i(20100),	-- Highlander's Lizardhide Boots
									i(20101),	-- Highlander's Lizardhide Boots
									i(20102),	-- Highlander's Lizardhide Boots
									i(20055),	-- Highlander's Chain Pauldrons
									i(20043),	-- Highlander's Chain Girdle
									i(20088),	-- Highlander's Chain Girdle
									i(20089),	-- Highlander's Chain Girdle
									i(20090),	-- Highlander's Chain Girdle
									i(20050),	-- Highlander's Chain Greaves
									i(20091),	-- Highlander's Chain Greaves
									i(20092),	-- Highlander's Chain Greaves
									i(20093),	-- Highlander's Chain Greaves
									i(20056),	-- Highlander's Mail Pauldrons
									i(20044),	-- Highlander's Mail Girdle
									i(20118),	-- Highlander's Mail Girdle
									i(20119),	-- Highlander's Mail Girdle
									i(20120),	-- Highlander's Mail Girdle
									i(20051),	-- Highlander's Mail Greaves
									i(20121),	-- Highlander's Mail Greaves
									i(20122),	-- Highlander's Mail Greaves
									i(20123),	-- Highlander's Mail Greaves
									i(20057),	-- Highlander's Plate Spaulders
									i(20041),	-- Highlander's Plate Girdle
									i(20124),	-- Highlander's Plate Girdle
									i(20125),	-- Highlander's Plate Girdle
									i(20126),	-- Highlander's Plate Girdle
									i(20048),	-- Highlander's Plate Greaves
									i(20127),	-- Highlander's Plate Greaves
									i(20128),	-- Highlander's Plate Greaves
									i(20129),	-- Highlander's Plate Greaves
									i(20058),	-- Highlander's Lamellar Spaulers
									i(20042),	-- Highlander's Lamellar Girdle
									i(20106),	-- Highlander's Lamellar Girdle
									i(20107),	-- Highlander's Lamellar Girdle
									i(20108),	-- Highlander's Lamellar Girdle
									i(20049),	-- Highlander's Lamellar Greaves
									i(20109),	-- Highlander's Lamellar Greaves
									i(20110),	-- Highlander's Lamellar Greaves
									i(20111),	-- Highlander's Lamellar Greaves
									i(20069),	-- Ironbark Staff
									i(20070),	-- Sageclaw
									i(20132),	-- Arathor Battle Tabard
									i(20073),	-- Cloak of the Honor Guard
									i(20071),	-- Talisman of Arathor
									i(21117),	-- Talisman of Arathor
									i(21118),	-- Talisman of Arathor
									i(21119),	-- Talisman of Arathor
								},
							}),
							--]]
						}),
					},
				}),
			}),
		}),
	}),
};
