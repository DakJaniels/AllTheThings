-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------

-- ALL OF THOSE ITEMS WERE NOT SORTED IN TIME BEFORE 10.0.5

-- DO NOT REMOVE OR I WILL FIND YOU! -Darkal

-- #if NOT ANYCLASSIC
root(ROOTS.WorldDrops, bubbleDown({ ["timeline"] = ADDED_10_0_5, ["description"] = "This item is currently in a temporary group of unsorted items under World Drops. It will be sorted soon.\nYou don't need to report this." }, {
	-- I AM HIDING THIS FOR NOW -Darkal
	--[[
	n(QUALITY_POOR, {
		n(ARMOR, {
			filter(FINGER_F, {
				i(180352),	-- Cracked Inquisitor's Band	-- TODO Shadowlands
				i(180350),	-- Simple Stone Loop	-- TODO Shadowlands
			}),
		}),
		n(WEAPONS, {
			filter(SHIELDS, {
				i(128824),	-- Tome of the Silver Hand	-- TODO Legion
			}),
			filter(THROWN, {	-- TODO
				-- #if NOT ANYCLASSIC
				-- The Burning Crusade
				i(29212),	-- Balanced Stone Dirk
				i(25872),	-- Balanced Throwing Dagger
				i(29014),	-- Blacksteel Throwing Dagger
				i(28408),	-- Broken Silver Star
				i(25861),	-- Crude Throwing Axe
				i(25875),	-- Deadly Throwing Axe
				i(25878),	-- Dusksteel Throwing Knife
				i(28319),	-- Gladiator's War Edge
				i(25876),	-- Gleaming Throwing Axe
				i(29009),	-- Heavy Throwing Dagger
				i(29013),	-- Jagged Throwing Axe
				i(25873),	-- Keen Throwing Knife
				i(25874),	-- Large Throwing Knife
				i(28979),	-- Light Throwing Knife
				i(29008),	-- Sharp Throwing Axe
				i(32378),	-- Silver Star
				i(34622),	-- Spinesever
				i(29007),	-- Weighted Throwing Axe
				i(29010),	-- Wicked Throwing Dagger

				-- Wrath of the Lich King
				i(44644),	-- Dalaran Dart
				i(40007),	-- Forsaken Throwing Knife
				i(39995),	-- Tuskarr Javelin
				i(37028),	-- Condor-Bone Star

				-- Cataclysm
				i(67467),	-- Vicious Gladiator's War Edge
				i(63798),	-- Winged Axe
				i(78369),	-- Razor Saronite Chip
				i(71593),	-- Giantslicer
				i(71592),	-- Deflecting Star
				i(71154),	-- Giantslicer
				i(71152),	-- Morningstar Shard
				i(68162),	-- Spinerender
				i(67466),	-- Vicious Gladiator's Hatchet
				i(67228),	-- Jadrag's Slicers
				i(65695),	-- Sludge-Caked Throwing Knives
				i(64551),	-- Winky's Star
				i(63795),	-- Garona's Spare Star
				i(61401),	-- Rigid Colossus Fragment
				i(57311),	-- Firetail Dart
				i(56001),	-- Slashing Thorns
				i(77213),	-- Razor Saronite Chip
				i(77085),	-- Unexpected Backup
				i(73358),	-- Valiant Knives of Battle
				i(71568),	-- Morningstar Shard
				i(71218),	-- Deflecting Star
				i(70198),	-- Ruthless Gladiator's War Edge
				i(70197),	-- Ruthless Gladiator's Hatchet
				i(64759),	-- Bloodthirsty Gladiator's Hatchet
				i(57441),	-- Shutter Uppers
				i(55470),	-- Razorwind Knives
				i(49258),	-- Light Throwing Tusk
				i(73359),	-- Valiant Knives of Stoicism
				i(73357),	-- Shadowstalking Knives
				i(69597),	-- Zulian Throwing Axe
				i(65321),	-- Stars of Felwood
				i(64871),	-- Bloodthirsty Gladiator's War Edge
				i(63208),	-- Glassweb Spider Fangs
				i(55478),	-- Rustmaul Knives
				i(55477),	-- Irontree Knives
				i(55476),	-- Bladefist Knives
				i(55475),	-- Mardenholde Knives
				i(55473),	-- Nethergarde Knives
				i(55471),	-- Steelspark Knives
				i(77087),	-- Darting Chakram
				i(77086),	-- Windslicer Boomerang
				i(66010),	-- Star of the Fool
				i(55474),	-- Splinterspear Knives
				i(25877),	-- Master's Throwing Dagger
				i(73412),	-- Cataclysmic Gladiator's War Edge
				i(64555),	-- Kibler's Fetch Toy
				i(56420),	-- Slashing Thorns
				i(78374),	-- Razor Saronite Chip
				i(73438),	-- Cataclysmic Gladiator's Hatchet
				i(49257),	-- Seashell Throwing Axe
				i(76155),	-- Thorns of the Dying Day
				i(68608),	-- Dragonwreck Throwing Axe
				i(73471),	-- Cataclysmic Gladiator's Hatchet
				i(61348),	-- Vicious Gladiator's Hatchet
				i(70232),	-- Ruthless Gladiator's War Edge
				i(70233),	-- Ruthless Gladiator's Hatchet
				i(73445),	-- Cataclysmic Gladiator's War Edge
				i(61347),	-- Vicious Gladiator's War Edge
				-- #endif
			})
		}),
	}),
	--]]
	n(QUALITY_COMMON, {
		n(ARMOR, {
			filter(CLOAKS, {
			--	i(53048),	-- Doomsday Message	-- TODO Cataclysm
			}),
			filter(MISC, {
			--	i(43486),	-- Mohawk Mask	-- something removed
			}),
			filter(FINGER_F, {
				i(7341),	-- Cubic Zirconia Ring	-- sold by many vendors
				i(7340),	-- Flawless Diamond Solitaire	-- sold by many vendors
				i(7339),	-- Miniscule Diamond Ring	-- sold by many vendors
				i(7338),	-- Mood Ring	-- sold by many vendors
				i(7342),	-- Silver Piffeny Band	-- sold by many vendors
				i(7337),	-- The Rock	-- sold by many vendors
			}),
		}),
	}),
}));
-- #endif