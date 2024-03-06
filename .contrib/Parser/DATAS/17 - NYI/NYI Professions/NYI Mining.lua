---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(MINING, {
		filter(PROFESSION_EQUIPMENT, {
			-- 10.0.7
			expansion(EXPANSION.DF, 0.7, bubbleDown({ ["timeline"] = { CREATED_10_0_7 } }, {
				i(204677),	-- Ogre Mining Pick
			})),
		}),
		filter(MISC, {
			-- 10.0.2
			expansion(EXPANSION.DF, 0.2, bubbleDown({ ["timeline"] = { CREATED_10_0_2 } }, {
				i(194063),	-- Glowing Fragment
				i(194064),	-- Intricate Geode
				i(194078),	-- Perfect Draconium Scale
				i(194079),	-- Pure Serevite Nugget
			})),

			-- 10.0.7
			expansion(EXPANSION.DF, 0.7, bubbleDown({ ["timeline"] = { CREATED_10_0_7 } }, {
				i(204632),	-- Tectonic Rock Fragment
			})),
		}),
		n(CRAFTABLES, {
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				r(8388),	-- Find Minerals [Rank 2]
				r(2577),	-- Mining
				r(2578),	-- Mining
				r(2579),	-- Mining
				r(8296),	-- Mass Smelt Copper OLD
				r(12680),	-- Journeyman Gemology
				r(12681),	-- Gemology - Copper (DND)
				r(12682),	-- Gemology - Tin (DND)
				r(12687),	-- Expert Gemology
				r(12689),	-- Gemology - Iron (DND)
				r(12690),	-- Gemology - Mithril (DND)
				r(12691),	-- Artisan Gemology
			}),
			expansion(EXPANSION.TBC, {
				-- 2.0.1
				expansion(EXPANSION.TBC, 0.1, bubbleDown({ ["timeline"] = { CREATED_2_0_1 } }, {
					r(32606),	-- Mining
				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, 0.2, bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(49253),	-- Unkown
					r(49254),	-- Unkown
					r(49255),	-- Unkown
					r(49260),	-- Unkown
					r(53417),	-- Unkown
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, 0.1, bubbleDown({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(308153),	-- Elethium Ore
					r(308130),	-- Laestrite Ore
					r(308150),	-- Oxxein Ore
					r(308151),	-- Phaedrum Ore
					r(308152),	-- Sinvyr Ore
					r(308131),	-- Solenium Ore
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382586),	-- Opening
				})),
			}),
		}),
	}),
}));