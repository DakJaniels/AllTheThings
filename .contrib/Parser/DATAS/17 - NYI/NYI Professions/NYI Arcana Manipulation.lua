---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ARCANA_MANIPULATION, {
		filter(RECIPES, {
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(364624),	-- Arcane-Infused Trinket
					r(364632),	-- Enchanted Staff
				})),
			}),
		}),
	}),
}));